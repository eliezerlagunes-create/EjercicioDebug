#%%
import seaborn as sns
import matplotlib.pyplot as plt

iris=sns.load_dataset("iris")
iris.info() #Check the data types of the columns
#%%
iris.boxplot()
plt.show()

#%%
sns.boxplot(data=iris)
plt.show()
# %%
import numpy as np
x=[4, 5, 7, 10, 12, 14]
#10 percentile
np.percentile(x, 1, method='averaged_inverted_cdf')
#%%
np.percentile(x, 10, method='linear')

# %%
Quartiles=np.percentile(x, [25, 50, 75], method='linear')
IQR=Quartiles[2]-Quartiles[0]
IQR
# %%
#Activity: Compute min and max for "petal length"
petal_length = iris["petal_length"]
Q1, Q2, Q3 = np.percentile(petal_length, [25, 50, 75], method='linear')
IQR = Q3 - Q1

min = Q1 - 1.5 * IQR
max = Q3 + 1.5 * IQR
min, max
#%%
import pandas as pd
datos=pd.read_csv("SSNMX_catalogo_19850101_19851231-5.csv",skiprows=4,skipfooter=7,engine="python")
datos
# %%
pd.to_numeric(datos["Magnitud"], errors="coerce")
# %%
datos["Magnitud"]=pd.to_numeric(datos["Magnitud"], errors="coerce")
datos.dropna(inplace=True)

# %%
#Activity: graph the boxplot for magnitude and compute the IQR.
#Interpret
sns.boxplot(data=datos, x="Magnitud")
plt.show()
Q1, Q2, Q3 = np.percentile(datos["Magnitud"], [25, 50, 75], method='linear')
IQR = Q3 - Q1

min = Q1 - 1.5 * IQR
max = Q3 + 1.5 * IQR
Q1, Q3, IQR, min, max
# %%
#And teh BIG EARTHQUAKES
datos[datos["Magnitud"]>7.0]

# %%
