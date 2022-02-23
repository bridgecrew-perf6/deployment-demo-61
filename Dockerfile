FROM python:3.8-slim
RUN pip3 install pipenv

# setup the folder and add the dependencies into the docker file
WORKDIR /app
ADD Pipfile Pipfile.lock /app/
RUN apt-get update && \
    pipenv install --system --deploy

# add the contents of the application
ADD . /app

# start the service
ENTRYPOINT ["python"]
CMD ["main.py"]
