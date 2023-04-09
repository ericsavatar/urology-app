import os, sys

import streamlit as st

import pandas as pd
import numpy as np


import warnings
warnings.filterwarnings("ignore")

# df = pd.DataFrame()

# import os
# for file in os.listdir("Data"):
#     if file.endswith(".txt"):


filepath = os.path.join("Data", "ULOG007.txt")
columns = ['date_time','vol']
df = pd.read_csv(filepath, header=None, names=columns)



st.line_chart(df, x="date_time", y="vol")