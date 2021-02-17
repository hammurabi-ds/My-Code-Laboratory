FROM continuumio/miniconda3 

RUN conda install -y -c conda-forge bash jupyter jupyter_contrib_nbextensions
RUN conda install -y -c conda-forge xeus-cling xtensor

CMD ["jupyter", "notebook", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--allow-root"]

