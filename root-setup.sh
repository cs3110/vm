# Change the time zone
timedatectl set-timezone America/New_York

# Install packages
apt-get -y update
DEBIAN_FRONTEND=noninteractive apt-get -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" upgrade
apt-get install -y ubuntu-desktop chromium-browser default-jdk pv linux-headers-$(uname -r) m4 build-essential dkms pkg-config libgtksourceview2.0-dev gnuplot vim vim-gtk emacs opam
usermod -a -G vboxsf vagrant

# Install VS Code
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EB3E94ADBE1229CF
add-apt-repository -y "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
apt-get -y update
apt-get -y install code

# Remove Libre Office to reduce VM disk size
apt-get -y remove --purge libreoffice*
apt-get -y clean
apt-get -y autoremove
