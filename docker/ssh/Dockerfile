# Source: https://docs.docker.com/engine/examples/running_ssh_service/
FROM ubuntu:18.04 as cedrus-training-ssh-image

# Install deps
RUN apt-get update && apt-get install -y openssh-server openssh-client
RUN mkdir /var/run/sshd

# Install dependencies
COPY packages.txt /
RUN sed 's/#.*//' packages.txt | xargs apt-get install -y

# SSH login fix. Otherwise user is kicked off after login
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile

# Set up non-root user with password
RUN adduser --disabled-password --gecos '' cedrus
RUN usermod -aG sudo cedrus
RUN echo "cedrus:SUPERSECRET!" | chpasswd

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]