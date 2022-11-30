import warnings
import pandas as pd


warnings.simplefilter(action='ignore', category=UserWarning)
xl = pd.ExcelFile("backend/models/data/PharmBot_v1.xlsx")

aid = 1

cdf = None

ailments = ""
questions = ""
criteria = ""
products = ""
product_criteria = ""


for sheet_name in xl.sheet_names:
    if sheet_name in ["Legal", "random"]:
        continue

    df = xl.parse(sheet_name)

    if sheet_name.endswith("Criteria"):
        cdf = df

        # ailments
        name = sheet_name.replace("Criteria", "").replace("Products", "").strip()
        description = ""

        ailments = "INSERT INTO ailments VALUES ({}, '{}', '{}');\n\n".format(aid, name, description)

        # questions
        questions = "INSERT INTO questions VALUES \n"
        qid = 1
        sid = 1
        description = ""

        for question in df.get("Question Set 1"):
            if not pd.isna(question):
                if question.startswith("Question Set"):
                    sid += 1
                
                else:
                    questions += "    ({}, {}, {}, '{}', '{}'), \n".format(aid, qid, sid, question, description)
                    qid += 1
        
        questions = questions[:-3] + ";\n\n"
    
    elif sheet_name.endswith("Products"):
        # criteria
        criteria = "INSERT INTO criteria VALUES \n"
        cid = 1
        formula = ""

        for col_name in df:
            if not col_name.startswith(("Product", "Column", "Total")):
                criteria += "    ({}, {}, '{}', '{}'), \n".format(aid, cid, col_name, formula)
                cid += 1
        
        criteria = criteria[:-3] + ";\n\n"

        # products
        products = "INSERT INTO products VALUES \n"
        pid = 1
        link = ""
        description = ""
        image = ""

        for row, product_name in enumerate(df[df.columns[-1]]):
            if not pd.isna(product_name):
                cid = 1
                formula = list()

                for col_name in df.dropna():
                    if not col_name.startswith(("Product", "Column", "Total")):
                        if not pd.isna(df.iloc[row][col_name]):
                            formula.append("{cid" + str(cid) + "}")

                        cid += 1
                
                if not pd.isna(df[df.columns[-1]][row]):
                    formula = " and ".join(formula)

                products += "\t(\n\t\t{},\n\t\t{},\n\t\t'{}',\n\t\t'{}',\n\t\t'{}',\n\t\t'{}',\n\t\t'{}'\n\t),\n".format(aid, pid, product_name.title(), link, description, image, formula)
                pid += 1
        
        products = products[:-3] + ";\n"

        # save data
        name = sheet_name.replace("Criteria", "").replace("Products", "").strip()

        print(name)
        file = open(f"backend/models/data/{name}.sql", "r")
        text = file.read()
        file.close()

        with open(f"backend/models/data/{name}.sql", "w", errors="ignore") as file:
            file.write(text + "\n" + products)

        aid += 1
