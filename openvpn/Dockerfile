FROM debian:jessie
MAINTAINER Vladimír Kriška <ujovlado@gmail.com>
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -q \
  && apt-get install openvpn ssh -y --no-install-recommends

ARG USER_NAME
ARG USER_UID
ARG USER_GID

RUN groupadd --gid $USER_GID $USER_NAME \
  && useradd --uid $USER_UID --gid $USER_GID --shell /bin/bash $USER_NAME

COPY entrypoint.sh /root/

ENTRYPOINT ["/root/entrypoint.sh"]
