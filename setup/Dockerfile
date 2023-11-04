FROM apache/spark-py:v3.4.0
USER root

RUN apt-get update && apt-get install -y unzip

COPY setup/requirements.txt /tmp/requirements.txt
RUN pip install -r /tmp/requirements.txt

# Evidencia 1
COPY datos/evidencia1/data.zip /tmp/data.zip
RUN unzip /tmp/data.zip -d /app/

# Evidencia 2
COPY datos/evidencia2/archive.zip /tmp/archive.zip
RUN unzip /tmp/archive.zip -d /app/

RUN pip install pyspark
RUN pip install pyspark[connect]

RUN mkdir -p /spark/jars
RUN curl -o /spark/jars/postgresql.jar https://jdbc.postgresql.org/download/postgresql-42.6.0.jar

RUN mkdir /notebooks
WORKDIR /notebooks

EXPOSE 8888

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--allow-root", "--no-browser"]
