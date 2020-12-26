FROM debian

WORKDIR $HOME/unix_v6
COPY . .

RUN apt-get update && apt-get install -y \
    simh \
    wget \
    unzip

RUN wget http://simh.trailing-edge.com/kits/uv6swre.zip \
    && unzip uv6swre.zip

CMD ["pdp11", "pdp11.rc"]