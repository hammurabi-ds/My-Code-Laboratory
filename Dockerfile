FROM continuumio/miniconda3 

RUN apt update
RUN apt install -y python3-pip

# install jupyter lab

# install r kernel
RUN apt install -y dirmngr apt-transport-https ca-certificates software-properties-common gnupg2
RUN apt-key adv --keyserver keys.gnupg.net --recv-key 'E19F5F87128899B192B1A2C2AD5F960A256A04AF'
RUN add-apt-repository 'deb https://cloud.r-project.org/bin/linux/debian buster-cran35/'
RUN apt-get update && apt-get install -y r-base 
RUN conda install -c r r-irkernel

RUN conda install -y -c conda-forge bash jupyter jupyter_contrib_nbextensions jupyterlab

# install c++ xeus
RUN conda install -y -c conda-forge xeus-cling xtensor

WORKDIR /home
CMD ["jupyter", "lab", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--allow-root"]

