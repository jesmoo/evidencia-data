FROM continuumio/anaconda3:latest

RUN conda install -y jupyter
RUN pip install -U jupyter
RUN pip install notebook
RUN pip install pyspark
RUN pip install pyspark[connect]

RUN mkdir /notebooks
WORKDIR /notebooks

EXPOSE 8888

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--allow-root", "--no-browser"]
