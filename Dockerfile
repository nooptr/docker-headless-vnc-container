## Custom Dockerfile
FROM consol/rocky-xfce-vnc
ENV REFRESHED_AT=2023-01-27

# Switch to root user to install additional software
USER 0

## Install pacakges
RUN yum install -y git vim tmux

RUN git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
RUN echo y | ~/.fzf/install

## switch back to default user
USER 1000