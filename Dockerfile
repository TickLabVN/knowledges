FROM ubuntu:latest

LABEL maintainer="Nguyen Ngoc Phu https://github.com/ngyngcphu"

RUN apt-get update && apt-get install -y python3-pip

RUN pip3 install mkdocs-material

RUN apt-get remove -y python3-pip

COPY . /docs

WORKDIR /docs

EXPOSE 8000

ENTRYPOINT [ "mkdocs" ]
CMD ["serve", "--dev-addr=0.0.0.0:8000"]