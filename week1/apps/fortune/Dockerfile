FROM ubuntu
RUN apt-get update
RUN ["apt-get", "-y","install", "cowsay", "fortune"]
COPY run.sh /
RUN chmod +x /run.sh
ENTRYPOINT ["/run.sh"]
