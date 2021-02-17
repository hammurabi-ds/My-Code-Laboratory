FROM continuumio/miniconda3 

# install jupyter lab
RUN conda install -y -c conda-forge bash jupyter jupyter_contrib_nbextensions jupyterlab

# install c++ xeus
RUN conda install -y -c conda-forge xeus-cling xtensor

# install r kernel
#RUN apt-get update -qq && apt-get install -y r-base 
#RUN conda install -c r r-irkernel

WORKDIR /home
CMD ["jupyter", "lab", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--allow-root"]

