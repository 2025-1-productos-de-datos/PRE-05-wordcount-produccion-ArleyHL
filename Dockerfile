#
# docker build -t wordcount-app .
# docker run --rm -v "$PWD/data/input:/data/input/" -v "$PWD/data/output:/data/output/" wordcount-app
#
FROM python:3.11-slim
WORKDIR /app
COPY . .
RUN pip install -e .
# python3 -m homework data/input data/output
CMD ["python", "-m", "homework", "/data/input/", "/data/output/"]

# docker run --rm -v "$PWD/data/input:/data/input/" -v "$PWD/data/output:/data/output/" wordcount-app

#1  docker >muestra los comandos
#2  docker image ls >muestra las imágenes de so del contenedor
#3  docker build -t wordcount-app .