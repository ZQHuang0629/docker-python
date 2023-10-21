# Using latest base image from Dockerhub (python:latest is python image in dockerhub)
FROM python:latest 

#Creating working directory inside container (use WORKDIR , must be in CAP)
WORKDIR /app

#Copy source code into working directory inside container
COPY . /app

#Install flask inside container
RUN pip install -r requirements.txt

#Expose container port
EXPOSE 8080

#Start flask app
ENTRYPOINT [ "python" ] 
CMD ["app.py"]

