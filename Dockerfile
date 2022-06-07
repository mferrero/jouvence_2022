FROM jupyter/scipy-notebook:45f07a14b422

ARG NB_USER=jovyan
ARG NB_UID=1000
ENV USER ${NB_USER}
ENV NB_UID ${NB_UID}
ENV HOME /home/${NB_USER}

WORKDIR ${HOME}

USER root
COPY . ${HOME}
RUN chown -R ${NB_UID} ${HOME}
USER ${USER}

# Set root to Notebooks
WORKDIR ${HOME}/notebooks

