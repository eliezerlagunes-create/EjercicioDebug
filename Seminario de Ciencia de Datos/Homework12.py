#%%
import seaborn as sns
import numpy as np
import matplotlib.pyplot as plt

titanic = sns.load_dataset("titanic")
titanic.info() #Check the data types of the columns

#%%
#Box plot for "age" and compute the IQR
sns.boxplot(data=titanic, x="age")
plt.show()

age = titanic["age"].dropna()
Q1, Q2, Q3 = np.percentile(age, [25, 50, 75], method='linear')
IQR = Q3 - Q1

min = Q1 - 1.5 * IQR
max = Q3 + 1.5 * IQR
Q1, Q2, Q3, IQR, min, max

#%%
#The outliers for "age"
outliers_age = titanic[titanic["age"] > max]
outliers_age

#%%
len(outliers_age)

#%%
#Box plot for "fare" and compute the IQR
sns.boxplot(data=titanic, x="fare")
plt.show()

fare = titanic["fare"].dropna()
Q1, Q2, Q3 = np.percentile(fare, [25, 50, 75], method='linear')
IQR = Q3 - Q1

min = Q1 - 1.5 * IQR
max = Q3 + 1.5 * IQR
Q1, Q2, Q3, IQR, min, max

#%%
#The outliers for "fare"
outliers_fare = titanic[titanic["fare"] > max]
outliers_fare

#%%
len(outliers_fare)
# %%
