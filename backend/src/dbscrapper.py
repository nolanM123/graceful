import warnings
import pandas as pd


warnings.simplefilter(action='ignore', category=UserWarning)
xl = pd.ExcelFile("backend/models/data/PharmBot_v1.xlsx")

for sheet_name in xl.sheet_names:
    df = xl.parse(sheet_name)

    # get ailment

    # get questions

    # get criteria

    # get products

    # get products criteria
