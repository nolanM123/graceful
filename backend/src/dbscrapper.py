import warnings
import pandas as pd


warnings.simplefilter(action='ignore', category=UserWarning)
xl = pd.ExcelFile("backend/models/data/PharmBot_v1.xlsx")

aid = 1

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
        # ailments
        name = sheet_name.replace("Criteria", "").replace("Products", "").strip()
        description = ""

        ailments = "INSERT INTO ailments VALUES ({}, '{}', '{}');\n\n".format(aid, name, description)

        # questions
        questions = "INSERT INTO questions VALUES \n"
        qid = 1
        sid = 1

        for question in df.get("Question Set 1"):
            if not pd.isna(question):
                if question.startswith("Question Set"):
                    sid += 1
                
                else:
                    questions += "\t({}, {}, {}, '{}'), \n".format(aid, qid, sid, question)
                    qid += 1
        
        questions = questions[:-3] + ";\n\n"
    
    elif sheet_name.endswith("Products"):
        # criteria
        criteria = "INSERT INTO criteria VALUES \n"
        cid = 1
        formula = ""

        for col_name in df:
            if not col_name.startswith(("Product", "Column", "Total")):
                criteria += "\t({}, {}, '{}', '{}'), \n".format(aid, cid, col_name, formula)
                cid += 1
        
        criteria = criteria[:-3] + ";\n\n"

        # products
        products = "INSERT INTO products VALUES \n"
        pid = 1
        link = ""
        description = ""
        image = ""

        for product_name in df[df.columns[-1]]:
            if not pd.isna(product_name):
                products += "\t({}, {}, '{}', '{}', '{}', '{}'), \n".format(aid, pid, product_name.title(), link, description, image)
                pid += 1
        
        products = products[:-3] + ";\n\n"

        # product criteria
        product_criteria = "INSERT INTO productCriteria VALUES \n"
        pid = 1
        for row in range(len(df.index)):
            cid = 1
            formula = list()

            for col_name in df.dropna():
                if not col_name.startswith(("Product", "Column", "Total")):
                    if not pd.isna(df.iloc[row][col_name]):
                        formula.append("{cid" + str(cid) + "}")

                    cid += 1
            
            if not pd.isna(df[df.columns[-1]][row]):
                product_criteria += "\t({}, {}, 'all([{}])'), \n".format(aid, pid, ", ".join(formula))
                pid += 1

        product_criteria = product_criteria[:-3] + ";\n"

        # save data
        name = sheet_name.replace("Criteria", "").replace("Products", "").strip()

        if name == "Legal":
            with open(f"backend/models/data/{name}.sql", "w", encoding='utf-8') as data:
                data.write(ailments + questions + criteria + products + product_criteria)

        aid += 1
