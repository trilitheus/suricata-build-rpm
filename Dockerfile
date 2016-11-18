FROM centos:7.2.1511
RUN yum install -y \
  file-devel \
  gcc \
  jansson-devel \
  libnet-devel \
  libnetfilter_queue-devel \
  libpcap-devel \
  libpcap-ng-devel \
  libyaml-devel \
  lua-devel \
  make \
  nss-devel \
  openssl-devel \
  pcre-devel \
  readline-devel \
  rpm-build \
  ruby \
  ruby-devel \
  tar \
  wget \
  zlib-devel 
RUN gem install fpm
ADD build_suricata.sh /usr/local/bin/
