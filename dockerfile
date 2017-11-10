FROM debian:latest

RUN apt-get update \
    && apt-get install -y git apache2 bc build-essential \
    cpp curl g++ gawk gcc genisoimage gzip htmldoc isolinux \
    lftp libapache2-mod-php7.0 libc6 libcurl3 liblzma-dev \
    m4 net-tools nfs-kernel-server \
    openssh-server php-gettext php7.0 php7.0-bcmath php7.0-cli \
    php7.0-curl php7.0-fpm php7.0-gd php7.0-json php7.0-mbstring \
    php7.0-mcrypt php7.0-mysql php7.0-mysqlnd sysv-rc-conf \
    tar tftp-hpa tftpd-hpa unzip vsftpd wget xinetd zlib1g


COPY ./fogproject ./fogproject
RUN cd fogproject/bin && ./installfog.sh -y && cd ../.. && rm -r fogproject