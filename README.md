# Evidencia 1

Este repositorio está diseñado para entregar la tarea Evidencia 1.

## Configuración del Entorno

Asegúrate de que tu entorno esté configurado correctamente siguiendo estos pasos:

### Requisitos Previos

- [Docker](https://www.docker.com/) y [Docker Compose](https://docs.docker.com/compose/) deben estar instalados. Puedes verificarlo ejecutando el siguiente comando:

    ```shell
    docker-compose --version
    ```

### Configuración de Variables de Entorno

1. Clona este repositorio.

2. Modifica las variables de entorno necesarias en la carpeta llamada `secrets`. Asegúrate de ajustarlas según tus necesidades.

3. Asegúrate de que los esquemas de la base de datos estén configurados de acuerdo a tus requisitos.

4. Descarga la informacion de los datos, lo puedes encontrar en este link de [Drive](https://drive.google.com/file/d/1S2kR2rqhLueTfjspEHSPULb2CWEF9sqY/view?usp=sharing)

4. Copia la informacion de los datos en la raiz del proyecto en un archivo .zip llamado data, se deberia de ver asi

    ```shell
    data.zip
    ```

## Inicio del Proyecto

Para iniciar el proyecto, sigue estos pasos:

1. Asegúrate de estar en el directorio del proyecto.

2. Ejecuta el siguiente comando para construir la imagen de forma correcta:

    ```shell
    docker-compose up
    ```

3. Para acceder a Anaconda, busca en los registros (logs) una URL similar a esta:

    ```shell
    http://127.0.0.1:8888/?token=xyz
    ```

4. Para acceder a Metabase, puedes usar la siguiente URL. Asegúrate de iniciar sesión:

    ```shell
    http://127.0.0.1:3000/
    ```

5. Si eres nuevo en Metabase, puedes configurarlo en:

    ```shell
    http://127.0.0.1:3000/setup

### Solución de Errores

Existe la posibilidad de que se presente un error debido al manejo de las comas en Spark por los tipos de daots. Para solucionarlo:

1. Accede a la terminal de Docker:

    ```shell
    docker ps
    ```

    Esto mostrará los ID de cada contenedor.

2. Accede al contenedor:

    ```shell
    docker exec -it {docker-id} /bin/bash
    ```

3. Una vez dentro, conecta a la terminal de Postgres, usando el usuario que hayas configurado:

    ```shell
    pqsl -U postgres
    ```

    Si no se modificaron los datos, accede a la base de datos:

    ```shell
    \c metabase
    ```

4. Modifica las tablas. Por ejemplo, si tienes un dato erróneo en `products`, es el error mas `comun`:

    ```sql
    DELETE FROM products WHERE department_id = ' Red"';
    ALTER TABLE products ALTER COLUMN department_id TYPE integer USING department_id::integer;
    ALTER TABLE products ALTER COLUMN aisle_id TYPE integer USING aisle_id::integer;
    ```

5. Una vez hecho eso, modifica y agrega las llaves foráneas:

    ```sql
    ALTER TABLE products ADD FOREIGN KEY (department_id) REFERENCES departments(department_id);
    ALTER TABLE products ADD FOREIGN KEY (aisle_id) REFERENCES aisles(aisle_id);
    ```

6. Finalmente, modifica los IDs de cada dimensión para ajustar correctamente los datos:

    ```sql
    ALTER TABLE departments ADD PRIMARY KEY (department_id);
    ALTER TABLE aisles ALTER COLUMN aisle_id TYPE integer USING aisle_id::integer;
    ```

    **Nota:** Realiza estas acciones después de insertar los datos, ya que la configuración actual de Spark está diseñada para modificar los esquemas originales.

---
