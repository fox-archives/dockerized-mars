FROM ubuntu:19.10

# install java
RUN apt-get -y update
RUN apt-get -y install default-jre

# create 'developer' user
RUN mkdir -p /home/developer && \
    mkdir -p /etc/sudoers.d && \
    touch /etc/sudoers.d/developer && \
    echo "developer:x:1000:1000:Developer,,,:/home/developer:/bin/bash" >> /etc/passwd && \
    echo "developer:x:1000:" >> /etc/group && \
    echo "developer ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/developer && \
    chmod 0440 /etc/sudoers.d/developer && \
    chown developer:developer -R /home/developer

# more setup
USER developer
ENV HOME /home/developer
WORKDIR /home/developer

CMD java -jar Mars4_5.jar

