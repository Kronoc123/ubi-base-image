FROM registry.access.redhat.com/ubi9/ubi@sha256:ed84f34cd929ea6b0c247b6daef54dd79602804a32480a052951021caf429494
RUN dnf list python3
RUN dnf install -y python3 python3-devel && dnf clean all
RUN adduser pythonuser
USER pythonuser
WORKDIR /home/pythonuser
CMD ["/bin/bash"]