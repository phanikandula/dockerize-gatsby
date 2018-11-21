FROM node

RUN apt update \
    && apt install -y sudo make vim  \
    && usermod -a -G sudo node \
    && echo "%sudo   ALL=(ALL:ALL) NOPASSWD: ALL" >> /etc/sudoers.d/no_passwd_sudo \
    && npm install --global gatsby-cli

USER node
WORKDIR /home/node
EXPOSE 8000

CMD ["bash"]