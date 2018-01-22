# Change the time zone
timedatectl set-timezone America/New_York

# Install repositories.  The until loop is because the GPG server that
#   add-apt-repository contacts is flaky and sometimes fails to
#   return a key.
until add-apt-repository ppa:webupd8team/atom
do sleep 3
done
until add-apt-repository ppa:webupd8team/sublime-text-3
do sleep 3
done

# Install packages
apt-get -y update
DEBIAN_FRONTEND=noninteractive apt-get -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" upgrade
apt-get install -y ubuntu-desktop chromium-browser default-jdk pv virtualbox-guest-utils virtualbox-guest-dkms
usermod -a -G vboxsf vagrant

apt-get install -y m4 opam
apt-get install -y vim vim-gtk emacs atom sublime-text-installer

# Remove Libre Office to reduce VM disk size
apt-get -y remove --purge libreoffice*
apt-get -y clean
apt-get -y autoremove
