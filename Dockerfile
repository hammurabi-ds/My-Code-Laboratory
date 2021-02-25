FROM jupyter/datascience-notebook
USER root

# install miniconda
RUN apt-get update && apt-get install -y curl 
RUN apt install build-essential

WORKDIR /home/jovyan/work

CMD ["jupyter", "lab", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--allow-root"]

