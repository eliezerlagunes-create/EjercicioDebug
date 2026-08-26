# %%
import seaborn as  sns #Library for plotting dataframes
import pandas as pd #Library for data analysis
import numpy as np #Numerical analysis
import matplotlib.pyplot as plt #Needed to display plots outside Colab/Jupyter

data= sns.load_dataset("tips")
data.info() #Check the data types of the columns

# %%
sns.scatterplot(data=data,x="total_bill",y="tip", color= "red", size="size", hue="sex")
plt.show()

# %%
iris= sns.load_dataset("iris")
iris.info() #Check the data types of the columns

# %%
iris.corr(numeric_only=True) #Correlation matrix of the numeric columns
# %%
correlation=iris.corr(numeric_only=True) #Correlation matrix of the numeric columns
sns.heatmap(correlation, annot=True, cmap="coolwarm") #Heatmap of the correlation matrix

# %%
from sklearn.datasets import fetch_california_housing
housing=fetch_california_housing(as_frame=True) #Load the California housing dataset
df=housing.frame #Get the dataframe from the dataset
df.info() #Check the data types of the columns
# %%
