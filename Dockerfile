FROM jupyter/datascience-notebook:r-4.0.3

COPY custom.js /home/jovyan/.jupyter/custom/custom.js

#RUN echo "c.NotebookApp.tornado_settings = { 'headers': {'X-Frame-Options': 'ALLOWALL'}}" >> /home/jovyan/.jupyter/jupyter_notebook_config.py 

RUN echo "c.NotebookApp.tornado_settings = { 'headers': {'Content-Security-Policy': "frame-ancestors https://dgate.dolphinnext.com 'self' "}}

# the jupyter processes will run as the non-root user jovyan
USER root

ENV CHOWN_HOME_OPTS='-R'
ENV CHOWN_HOME='yes'
