import warnings
import pandas as pd


warnings.simplefilter(action='ignore', category=UserWarning)
xl = pd.ExcelFile("backend/models/data/PharmBot_v1.xlsx")
# df = xl.parse(sheet_name)

sql_data = dict()
ailments = []

for sheet_name in xl.sheet_names:
    pass
