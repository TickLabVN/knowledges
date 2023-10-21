FROM ubuntu:latest

LABEL maintainer="TickLab Viet Nam https://github.com/TickLabVN"

RUN apt-get update && apt-get install -y python3-pip

RUN pip3 install mkdocs-material
RUN pip3 install mkdocs-git-revision-date-localized-plugin

RUN apt-get remove -y python3-pip

COPY . /docs

WORKDIR /docs

EXPOSE 8000

ENTRYPOINT [ "mkdocs" ]
CMD ["serve", "--watch-theme"]