FROM python:3.6.12
##USING PYTHON 3.6.12 AS BASE IMAGE##

MAINTAINER himani "himani.de7@gmail.com"
##CREATING A WORKSPACE DIR ##
RUN mkdir /workspace

##DEFINING THE WORKSPACE DIR FOR IMAGE ##
WORKDIR /workspace

##COPYING THE requirement.txt which contains the required package##
COPY requirement.txt /workspace

##Installing the required packages ##
RUN pip install -r requirement.txt

##COPY the app.py in the image##
COPY app.py /workspace

##COPY the model.pkl in the image##
COPY  model.pkl  /workspace

##ADDING the templates in the image##
ADD  templates    /workspace

##ADDING the static in the image##
ADD  static  /workspace


##Expose the port 9090 on which flask server will run##
EXPOSE 9090

##RUNNING THE PYTHON CODE ON CONTAINER START##
CMD ["python","app.py"]
