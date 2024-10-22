"""
Detección de Atípicos
Cosijoeza Melchor Nolasco
"""

import pandas as pd
import numpy as np

data = pd.read_csv('train.csv')

data.columns

data.head()

out = []
def Zscore_outlier(df,umbral):
  mean = np.mean(df)
  standarDesviation = np.std(df)
  for i in df:
      z = (i - mean) / standarDesviation
      if np.abs(z) > umbral:
        out.append(i)
  print("Outliers: ",out)
Zscore_outlier(data['LotArea'],umbral=3)

Zscore_outlier(data['SalePrice'])

data.dtypes

from matplotlib import pyplot as plt
import seaborn as sns
def box_plots(df):
  plt.figure(figsize=(10,4))
  plt.title("Box Plot")
  sns.boxplot(df)
  plt.show()

"""## Ejemplo - Fireplaces"""

box_plots(data['Fireplaces'])

def hists_plot(df):
  plt.figure(figsize=(10,4))
  plt.hist(df)
  plt.title("Histograma Plot")
  plt.show()

hists_plot(data['Fireplaces'])

def dist_plot(df):
  plt.figure(figsize=(10,4))
  sns.distplot(df)
  plt.title("Distribution Plot")
  sns.despine()
  plt.show()

dist_plot(data['Fireplaces'])

from statsmodels.graphics.gofplots import qqplot
def qq_plots(df):
  plt.figure(figsize=(10,4))
  qqplot(df,line='s')
  plt.title("Normal QQPlot")
  plt.show()

qq_plots(data['Fireplaces'])

"""## 1.- LotArea

Sus datos atípicos:
"""

Zscore_outlier(data['LotArea'],umbral=3)

Zscore_outlier(data['LotArea'],umbral=400)

box_plots(data['LotArea'])

hists_plot(data['LotArea'])

dist_plot(data['LotArea'])

qq_plots(data['LotArea'])

"""Los datos atípicos están de 50000 en adelante

## 2.-YearBuilt
Sus datos atípicos:
"""

Zscore_outlier(data['YearBuilt'],umbral=3)

Zscore_outlier(data['YearBuilt'],umbral=1950)

data['YearBuilt'].dtypes

box_plots(data['YearBuilt'])

hists_plot(data['YearBuilt'])

dist_plot(data['YearBuilt'])

qq_plots(data['YearBuilt'])

"""Los datos atípicos se encuentran por debajo del año 1900

## 3.-YrSold
Sus datos atípicos:
"""

Zscore_outlier(data['YrSold'],umbral=3)

Zscore_outlier(data['YrSold'],umbral=1950)

box_plots(data['YrSold'])

hists_plot(data['YrSold'])

dist_plot(data['YrSold'])

qq_plots(data['YrSold'])

"""Agregué este ejercicio porque llamo mi atención al ver que no se detectan como tal atípicos en las gráficas o no son facil de observar si es que los hay.

## 4.-LotArea
Sus datos atípicos:
"""

Zscore_outlier(data['LotArea'],umbral=3)

Zscore_outlier(data['LotArea'],umbral=150000)

box_plots(data['LotArea'])

hists_plot(data['LotArea'])

dist_plot(data['LotArea'])

qq_plots(data['LotArea'])

"""Los datos atípicos se encuentran arriba de los 2500 o 3000"""