FROM continuumio/anaconda3:2023.09-0

RUN apt-get update && apt-get install -y unzip

COPY setup/requirements.txt /tmp/requirements.txt
COPY data.zip /tmp/data.zip

RUN unzip /tmp/data.zip -d /app/
RUN pip install -r /tmp/requirements.txt

RUN conda install -y jupyter
RUN pip install pyspark[connect]

RUN mkdir /notebooks
WORKDIR /notebooks

EXPOSE 8888

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--allow-root", "--no-browser"]
