FROM nginx
MAINTAINER Vitalii Akhmodishyn
WORKDIR /script
COPY ./entrypoint.sh ./
RUN chmod +x /script/entrypoint.sh && ./entrypoint.sh
