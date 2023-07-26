FROM r-base:4.2.2
# FROM rocker/r-ver:4.2.2

RUN apt-get update -y
RUN apt-get -y install --no-upgrade curl libxml2 libxml2-dev libcurl4-openssl-dev libssl-dev libfontconfig1-dev cmake libharfbuzz-dev libfribidi-dev libfreetype6-dev libpng-dev libtiff5-dev libjpeg-dev
ADD installRpackages.R /tmp
WORKDIR /tmp
RUN Rscript /tmp/installRpackages.R
CMD R 
