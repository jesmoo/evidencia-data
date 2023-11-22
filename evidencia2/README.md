# Resolución de la Evidencia 2

En este apartado se detallan los pasos necesarios para la resolución de la Evidencia 2.

### Avance 1

#### Obtención de Datos

1. **Descarga de Datos**:
   - Descargamos el conjunto de datos requerido desde la página de Kaggle utilizando el siguiente enlace: [Fast Food Sales Report](https://www.kaggle.com/datasets/rajatsurana979/fast-food-sales-report/).

2. **Almacenamiento de Datos**:
   - Guardamos el archivo descargado con el nombre `archivo.zip` en la carpeta `evidencia2` que se encuentra dentro de la carpeta `datos`.

#### Estructura de Directorios

La estructura de directorios debería quedar de la siguiente manera:

```plaintext
datos/
|- evidencia/
|  |-- ...
|- evidencia2/
|  |-- archivo.zip
```

### Puntos a considerar

La actual información que se tiene no contamos con una columna que identifique el cliente, para realizar la segmentacion de estos, sin embargo se puede sustituir con el **order_id**, ya que podemos suponer que son transacciones por clientes.

### Avance 2

#### Obtención de Datos

1. **Descarga de Datos**:
   - Actualmente los datos están cargados en el proyecto.
   - En caso que no, lo descargamos desde la página de Kaggle utilizando el siguiente enlace: [Online Shopping Dataset](https://www.kaggle.com/datasets/jacksondivakarr/online-shopping-dataset).

2. **Almacenamiento de Datos**:
   - Guardamos el archivo descargado con el nombre `onlineShoppingDataset.zip` en la carpeta `evidencia2` que se encuentra dentro de la carpeta `datos`.

#### Estructura de Directorios

La estructura de directorios debería quedar de la siguiente manera:

```plaintext
datos/
|- evidencia/
|  |-- ...
|- evidencia2/
|  |-- archivo.zip
|  |-- onlineShoppingDataset.zip
```

### Puntos a considerar

Se cambio el archivo para esta evidencia, ya que los datos anteriores no podíamos hacer de forma correcta el algoritmo k-means, con estos datos se planea mitigar ese problema
