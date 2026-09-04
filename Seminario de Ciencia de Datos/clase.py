# %% Imports
import seaborn as sns
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

# %% Cargar datos
iris = sns.load_dataset("iris")
iris.head()

# %% Mahalanobis: preparar X, media y covarianza
X = np.array(iris.iloc[:, [0, 1]])
mu = X.mean(axis=0)
S = np.cov(X, rowvar=False)
S_inv = np.linalg.inv(S)
S_inv

# %% Comprobación: S_inv @ S debe ser la identidad
S_inv @ S

# %% Distancias de Mahalanobis
d = np.sqrt(np.sum((X - mu) @ S_inv * (X - mu), axis=1))
d

# %% Exploración
iris.iloc[:, [0, 1]]

# %% Compute the Mahalanobis distance
DM=np.sqrt(np.sum((X-mu)@S_inv*(X-mu),axis=1))

# %%  #Determine the lower values for Distance. Use 50 % threshold
Threshold=np.percentile(DM,50)     #Central region
outliers=np.percentile(DM,97.5)     #Outliers region
central=DM<=Threshold
outliers=DM>=outliers
plt.scatter(X[:,0],X[:,1],color="blue")
plt.scatter(X[outliers,0],X[outliers,1],color="red")
plt.scatter(X[central,0],X[central,1],color="black")

# distancias bajas y las observaciones a las que corresponden
iris.iloc[:, [0, 1]].assign(dist=DM).loc[central].sort_values("dist")

# %% Mahalanobis depht
M_Depth = 1/(1+DM**2)
thresh_outliers=np.percentile(M_Depth,2.5)
outliers1=M_Depth<=thresh_outliers

plt.scatter(X[outliers1,0],X[outliers1,1],color="red")
# %% Tukey Depth 
import module as mod
Tukey_Depth=mod.tukey_depth(X)
plt.scatter(Tukey_Depth,M_Depth,alpha=0.7,color="red")
#Plot the DD plot for petal dimensions

# %% DD plot for petal dimensions (petal_length, petal_width)
Xp = np.array(iris.iloc[:, [2, 3]])
mu_p = Xp.mean(axis=0)
Sp_inv = np.linalg.inv(np.cov(Xp, rowvar=False))

# Mahalanobis depth
DM_p = np.sqrt(np.sum((Xp - mu_p) @ Sp_inv * (Xp - mu_p), axis=1))
M_Depth_p = 1 / (1 + DM_p**2)

# Tukey (halfspace) depth
Tukey_Depth_p = mod.tukey_depth(Xp)

# DD plot: Tukey depth vs Mahalanobis depth
plt.scatter(Tukey_Depth_p, M_Depth_p, alpha=0.7, color="red")
plt.xlabel("Tukey depth")
plt.ylabel("Mahalanobis depth")
plt.title("DD plot - petal dimensions")
plt.show()

# %%
