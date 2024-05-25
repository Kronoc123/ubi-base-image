FROM registry.access.redhat.com/ubi9/ubi@sha256:ed84f34cd929ea6b0c247b6daef54dd79602804a32480a052951021caf429494
USER pythonuser
WORKDIR /home/pythonuser
RUN dnf install -y python3 python3-devel && dnf clean all
CMD ["/bin/bash"]