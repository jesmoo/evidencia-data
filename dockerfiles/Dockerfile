FROM continuumio/anaconda3:latest

COPY dockerfiles/requirements.txt /tmp/requirements.txt
COPY data/ /app/

RUN pip install -r /tmp/requirements.txt
RUN conda install -y jupyter
RUN pip install pyspark[connect]

RUN mkdir /notebooks
WORKDIR /notebooks

EXPOSE 8888

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--allow-root", "--no-browser"]
