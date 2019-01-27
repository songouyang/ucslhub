# Copyright (c) Jupyter Development Team.
# Distributed under the terms of the Modified BSD License.
FROM jupyter/scipy-notebook

USER $NB_UID

#Install nbgrader
RUN pip install nbgrader && \
    jupyter nbextension install --user --py nbgrader && \
    jupyter nbextension enable --user --py nbgrader && \
    jupyter serverextension enable --user --py nbgrader && \
    mkdir ~/work/assignments/ && \
    fix-permissions /home/$NB_USER

COPY nbgrader_config.py /home/jovyan/.jupyter/nbgrader_config.py

WORKDIR /home/jovyan/
