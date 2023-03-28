FROM alpine:3.17
LABEL maintainer="carrergt@gmail.com"

ENV SOMEKEY=1234
ENV TOKEN=5678

RUN ln -sf /usr/share/zoneinfo/Europe/Copenhagen /etc/localtime

RUN apk update
RUN apk add py3-pip
RUN pip3 install fastapi uvicorn jinja2 bs4 requests pillow

WORKDIR /app
COPY ./ ./
CMD ["sh","./prod_start.sh"]

EXPOSE 9011