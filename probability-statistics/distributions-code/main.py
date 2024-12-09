import numpy as np
import matplotlib.pyplot as plt
from scipy import stats

# Distribución binomial
# Lanzamos una moneda 10 veces, esto lo repetimos 10000 veces. La probabilidad de éxito es 0.5
binomial_samples = np.random.binomial(10, 0.5, size=10000)
print(binomial_samples)
#Graficamos nuestra distribución
fig, ax = plt.subplots()
plt.hist(binomial_samples, density=True, bins=11)
plt.title("Distribución binomial", size=14)
plt.xlabel("Muestras")
plt.ylabel("Densidad")
plt.axvline(10 * 0.5, color="#3793ef", linestyle="--")
plt.axvline(0, color="#3793ef", linestyle="--")
plt.axvline(10, color="#3793ef", linestyle="--")
plt.show()


# Graficando Geométrica
p = 0.3  # parametro de forma
geometrica = stats.geom(p)  # Distribución
x = np.arange(geometrica.ppf(0.01), geometrica.ppf(0.99))
fmp = geometrica.pmf(x)  # Función de Masa de Probabilidad
plt.plot(x, fmp, "--")
plt.vlines(x, 0, fmp, colors="b", lw=5, alpha=0.5)
plt.title("Distribución Geométrica")
plt.ylabel("probabilidad")
plt.xlabel("valores")
plt.show()


# Graficando Hipergeométrica
M, n, N = 30, 10, 12  # parametros de forma
hipergeometrica = stats.hypergeom(M, n, N)  # Distribución
x = np.arange(0, n + 1)
fmp = hipergeometrica.pmf(x)  # Función de Masa de Probabilidad
plt.plot(x, fmp, "--")
plt.vlines(x, 0, fmp, colors="b", lw=5, alpha=0.5)
plt.title("Distribución Hipergeométrica")
plt.ylabel("probabilidad")
plt.xlabel("valores")
plt.show()

# Distribución de Poisson
# Hacemos una simulación de 10000 muestras
poisson_samples = np.random.poisson(3, 10000)
# Graficamos nuestra distribución
fig, ax = plt.subplots()
plt.hist(poisson_samples, density=True, bins=10)
plt.title("Distribución de Poisson", size=14)
plt.xlabel("Muestras")
plt.ylabel("Densidad")
plt.axvline(3, color="#3793ef", linestyle="--")
plt.show()

# Distribución exponencial
# Simulamos
exponential_samples = np.random.exponential(3, 10000)
# Graficamos
fig, ax = plt.subplots()
plt.hist(exponential_samples, density=True, bins=100)
plt.title("Distribución de exponencial", size=14)
plt.xlabel("Muestras")
plt.ylabel("Densidad")
plt.show()


# Distribución normal
# Generamos una muestra de 10000 elementos con media 0 y desviación estándar 1
normal_samples = np.random.normal(0, 1, size=10000)
# Graficamos nuestros datos
fig, ax = plt.subplots()
plt.hist(normal_samples, bins=50, density=True)
plt.title("Distribución normal", size=14)
plt.xlabel("Muestras")
plt.ylabel("Densidad")
plt.axvline(0, color="#3793ef", linestyle="--")
plt.axvline(np.std(normal_samples), color="#3793ef", linestyle="--")
plt.axvline(-1 * np.std(normal_samples), color="#3793ef", linestyle="--")
plt.show()
