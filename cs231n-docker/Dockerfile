FROM debian
COPY sources.list /etc/apt
COPY requirements.txt /root
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update -y && apt-get install -y --assume-yes apt-utils
RUN apt-get upgrade -y
RUN apt-get install -y \
	python3.6 \
	gfortran \
	libopenblas-dev \
	liblapack-dev \
	libfreetype6-dev \
	libpng-dev \
	#libpng12-dev \
	libjpeg-dev \
	pkg-config \
	libncurses5-dev \
	python3-pip \
	python3-tk
RUN ln -s /usr/include/freetype2/ft2build.h /usr/include
RUN (cd /root && pip3 install -r requirements.txt)
WORKDIR /root
