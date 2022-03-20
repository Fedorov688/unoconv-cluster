FROM debian:bullseye
#RUN apt update && apt install -y unoconv libreoffice-writer
RUN apt update && apt install -y libreoffice git python3 python-is-python3 nfs-common
RUN git clone https://github.com/dagwieers/unoconv.git
RUN cp unoconv/unoconv /usr/bin
