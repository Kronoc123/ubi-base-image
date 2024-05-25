FROM ubi9/ubi:9.0.0
USER pythonuser
WORKDIR /home/pythonuser
RUN dnf install -y python3 python3-devel && dnf clean all
CMD ["/bin/bash"]