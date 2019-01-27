# Copyright (c) Jupyter Development Team.
# Distributed under the terms of the Modified BSD License.
FROM jupyter/scipy-notebook

LABEL maintainer="Mohit Sharma <Mohitsharma44@gmail.com>"

USER $NB_UID

#Install nbgrader
RUN pip install --no-cache nbgrader && \
    jupyter nbextension install --user --py nbgrader && \
    jupyter nbextension enable --user --py nbgrader && \
    jupyter serverextension enable --user --py nbgrader && \
    mkdir ~/work/assignments/ && \
    fix-permissions /home/$NB_USER

COPY nbgrader_config.py /home/jovyan/.jupyter/nbgrader_config.py

WORKDIR /home/jovyan/
