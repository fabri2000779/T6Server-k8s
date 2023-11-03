FROM debian:bullseye

ENV WINEPREFIX="/root/.wine"
ENV WINEDEBUG="fixme-all"
ENV WINEARCH="win64"
ENV DISPLAY=":0"
ENV SERVER_TYPE="Zombie"
ENV SERVER_NAME="T6Server"
ENV SERVER_PORT=4976

WORKDIR /root/T6Server

COPY . ./

# Install dependencies
RUN dpkg --add-architecture i386 && apt-get update && apt-get install -y \
    wget \
    gnupg2 \
    software-properties-common \
    apt-transport-https \
    winbind \
    curl

# Install wine
RUN apt-add-repository 'deb https://dl.winehq.org/wine-builds/debian/ bullseye main' && \
    wget -nc https://dl.winehq.org/wine-builds/winehq.key && \
    apt-key add winehq.key && \
    apt-get update && \
    apt-get install -y --install-recommends winehq-stable

RUN wget https://packages.microsoft.com/config/debian/10/packages-microsoft-prod.deb -O packages-microsoft-prod.deb && \
    dpkg -i packages-microsoft-prod.deb && \
    rm packages-microsoft-prod.deb && \
    apt-get update && \
    apt-get install -y dotnet-sdk-3.1 && \
    apt-get install -y dotnet-sdk-6.0 && \
    apt-get install -y aspnetcore-runtime-3.1 && \
	apt-get install -y aspnetcore-runtime-6.0

RUN winecfg

ENTRYPOINT [ "/bin/sh", ".github/docker/entrypoint.sh" ]
CMD ["/bin/bash", "/root/T6Server/Plutonium/T6Server.sh"]