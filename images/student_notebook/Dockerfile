FROM cusp/ucsl-ta_notebook:latest

USER $NB_UID

RUN jupyter nbextension disable --user create_assignment/main && \
    jupyter nbextension disable --user formgrader/main --section=tree && \
    jupyter serverextension disable --user nbgrader.server_extensions.formgrader && \
    fix-permissions /home/$NB_USER

COPY nbgrader_config.py /home/jovyan/.jupyter/nbgrader_config.py

WORKDIR /home/jovyan/
