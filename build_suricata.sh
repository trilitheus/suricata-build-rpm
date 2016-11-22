cd /tmp
gem install fpm
wget http://www.openinfosecfoundation.org/download/suricata-3.1.tar.gz
tar xzf suricata-3.1.tar.gz
cd suricata-3.1
./configure --prefix=/usr --sysconfdir=/etc --localstatedir=/etc --enable-nfqueue --enable-lua
make
make install-full DESTDIR=/tmp/installdir
cd /tmp/destdir
fpm -s dir -t rpm -f -n suricata -v 3.1 -a x86_64 -C /tmp/installdir --template-scripts --after-install /tmp/destdir/postinstall -d 'libpcap > 1.5.2' -d 'libnet > 1.1.5' -d 'libnetfilter_queue > 1.0.1' -d 'jansson > 2.3' -d 'libyaml > 0.1.3' -p suricata-VERSION_ARCH.rpm usr/ etc/
