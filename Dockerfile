FROM sagemath/sagemath
# Randark's permission limit questioning framework
LABEL auther="Randark_JMT"
EXPOSE 9999

# RUN sed -i "s@http://deb.debian.org@https://mirrors.tuna.tsinghua.edu.cn@g" /etc/apt/sources.list
RUN apt-get update && apt-get install -y socat

COPY ./src/main.sage /
COPY ./docker/bin/docker-entrypoint.sh /

ENTRYPOINT [ "/bin/bash","/docker-entrypoint.sh" ]