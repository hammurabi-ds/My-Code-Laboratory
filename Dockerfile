FROM jupyter/datascience-notebook

#RUN apt-get update && apt-get install -y curl 
#RUN curl -LO http://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
#RUN bash Miniconda3-latest-Linux-x86_64.sh -p /miniconda -b
#RUN rm Miniconda3-latest-Linux-x86_64.sh
#ENV PATH=/miniconda/bin:${PATH}
#RUN conda update -y conda

# install r kernel
#RUN apt install -y dirmngr gnupg apt-transport-https ca-certificates software-properties-common
#RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
#RUN sudo add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu focal-cran40/'
#RUN apt-get update && apt-get install -y r-base 
#RUN conda install -c r r-irkernel

# install c++ xeus
#RUN conda install -y -c conda-forge xeus-cling xtensor

WORKDIR /home/jovyan
#RUN mkdir ds
#WORKDIR ds
CMD ["jupyter", "lab", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--allow-root"]

