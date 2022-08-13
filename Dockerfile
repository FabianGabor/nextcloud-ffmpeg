FROM nextcloud:latest

# RUN apt-get update && apt-get install -y ffmpeg && rm -rf /var/lib/apt/lists/*

# RUN apt update && apt install -y wget gnupg2 unzip

# Install dlib
# RUN echo "deb https://repo.delellis.com.ar bullseye bullseye" > /etc/apt/sources.list.d/20-pdlib.list \
#  && wget -qO - https://repo.delellis.com.ar/repo.gpg.key | apt-key add -
#RUN apt update \
#  && apt install -y libdlib-dev

# Install pdlib extension
# RUN wget https://github.com/goodspb/pdlib/archive/master.zip \
#  && mkdir -p /usr/src/php/ext/ \
#  && unzip -d /usr/src/php/ext/ master.zip \
#  && rm master.zip
# RUN docker-php-ext-install pdlib-master

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
