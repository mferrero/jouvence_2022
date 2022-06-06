FROM jupyter/scipy-notebook

ENV HOME /home/joyvan
COPY . ${HOME}

WORKDIR ${HOME}

EXPOSE 8888
CMD ["jupyter","notebook","--ip","0.0.0.0"]
