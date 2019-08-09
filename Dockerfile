FROM r-base:3.5.1

RUN apt-get update -y --allow-releaseinfo-change
RUN apt-get -y install curl libxml2 libxml2-dev libcurl4-openssl-dev libssl-dev r-cran-openssl 
ADD installRpackages.R /tmp
WORKDIR /tmp
RUN Rscript /tmp/installRpackages.R
CMD R 
