FROM jupyter/datascience-notebook:r-4.0.3

COPY custom.js /home/jovyan/.jupyter/custom/custom.js

RUN echo "c.NotebookApp.tornado_settings = { 'headers': {'X-Frame-Options': 'ALLOWALL'}}" >> /home/jovyan/.jupyter/jupyter_notebook_config.py 

# the jupyter processes will run as the non-root user jovyan
USER root

ENV CHOWN_HOME_OPTS='-R'
ENV CHOWN_HOME='yes'
