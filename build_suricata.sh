cd /tmp
wget http://www.openinfosecfoundation.org/download/suricata-3.1.tar.gz
tar xzf suricata-3.1.tar.gz
cd suricata-3.1
./configure --prefix=/usr --sysconfdir=/etc --localstatedir=/etc --enable-nfqueue --enable-lua
make
make install-full DESTDIR=/tmp/installdir
cd /tmp/destdir
# fpm -s dir -t rpm -n suricata -v 3.1 -C /tmp/installdir -p suricata-VERSION_ARCH.rpm usr/ etc/
