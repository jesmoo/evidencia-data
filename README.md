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
    ```
