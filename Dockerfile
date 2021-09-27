FROM r-base:4.1.1

RUN apt-get update
RUN apt-get -y install curl libxml2 libxml2-dev libcurl4-openssl-dev libssl-dev r-cran-openssl 
ADD installRpackages.R /tmp
WORKDIR /tmp
RUN Rscript /tmp/installRpackages.R
CMD R 
