FROM ubuntu
USER root
WORKDIR /work
ENV HOME /work

# install python dependancies and extra software
RUN apt update
RUN apt install -y python-setuptools \
    		   python-dev \
		   python-pip
RUN pip install jupyter \
    		matplotlib \
		numpy \
		sklearn

# make sure the work directory can be modified by any user
RUN chmod -R 777 /work

# Allow incoming connections on port 8888
EXPOSE 8888