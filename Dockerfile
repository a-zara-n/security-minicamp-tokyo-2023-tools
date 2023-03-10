FROM ubuntu:22.04
COPY install.sh /install.sh
RUN chmod +x /install.sh
RUN /install.sh
RUN rm /install.sh
WORKDIR /tmp/minicamp
ENTRYPOINT ["/bin/bash"]