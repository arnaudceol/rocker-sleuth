FROM rocker/rstudio
# Based on the rocker image https://github.com/rocker-org/rocker

MAINTAINER "Arnaud ceol" arnaud.ceol.pro@gmail.com

RUN apt-get update && apt-get install -y libz-dev libhdf5-serial-dev

COPY install.R .

RUN Rscript install.R
