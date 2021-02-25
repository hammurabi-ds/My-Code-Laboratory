FROM jupyter/datascience-notebook
USER root

RUN apt-get update && apt-get install -y curl 

# install xeus-cling
RUN conda install xeus-cling -c conda-forge

WORKDIR /home/jovyan/work

CMD ["jupyter", "lab", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--allow-root"]

