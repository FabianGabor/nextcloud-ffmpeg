FROM nextcloud:latest

# Install ffmpeg
RUN set -ex; \
    \
    apt-get update; \
    apt-get install -y --no-install-recommends \
        ffmpeg \
#        libmagickcore-6.q16-6-extra \
#        procps \
#        smbclient \
#        supervisor \
#       libreoffice \
    ; \
    rm -rf /var/lib/apt/lists/*

ENV NEXTCLOUD_UPDATE=1
