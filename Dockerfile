FROM jupyter/scipy-notebook

#WORKDIR /home/$NB_USER/notebooks

EXPOSE 8888
CMD ["jupyter","notebook","--ip","0.0.0.0"]
