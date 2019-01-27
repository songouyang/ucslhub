FROM cusp/ucsl-ta_notebook:latest

LABEL maintainer="Mohit Sharma <Mohitsharma44@gmail.com>"

USER $NB_UID

RUN jupyter nbextension disable --user create_assignment/main && \
    jupyter nbextension disable --user formgrader/main --section=tree && \
    jupyter serverextension disable --user nbgrader.server_extensions.formgrader && \
    fix-permissions /home/$NB_USER

COPY nbgrader_config.py /home/$NB_USER/.jupyter/nbgrader_config.py

WORKDIR /home/jovyan/
