# Change the time zone
timedatectl set-timezone America/New_York

# Install packages
apt-get -y update
DEBIAN_FRONTEND=noninteractive apt-get -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" upgrade
apt-get install -y ubuntu-desktop chromium-browser default-jdk pv linux-headers-$(uname -r) m4 build-essential dkms libgtksourceview2.0-dev 
usermod -a -G vboxsf vagrant
apt-get install -y vim vim-gtk emacs

# Install OPAM
#
# MRC: Normally we'd just do `apt-get install -y opam`. But...
# As of 8/18/19, the opam package in the Debian repository is
# v2.0.3, which is associated with a [bug][] that prevents installing
# OCaml 4.08.1.  The solution is to upgrade to at least v2.0.4, but
# that's not available from Debian. The [AVSM][] repository does have
# v2.0.4 for Ubuntu 18.04 but not 19.04.
#
# [bug]: https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=908203
# [AVSM]: https://launchpad.net/~avsm/+archive/ubuntu/ppa
#
# So we are forced to install outside of a package manager.  Hopefully
# next semester this can be removed and we can go back to the `apt-get`
# installation, as above. 
wget https://github.com/ocaml/opam/releases/download/2.0.5/opam-2.0.5-x86_64-linux
mv opam-2.0.5-x86_64-linux /usr/local/bin/opam
sudo chmod a+x /usr/local/bin/opam
# End OPAM Install

# Install VS Code
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EB3E94ADBE1229CF
add-apt-repository -y "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
apt-get -y update
apt-get -y install code

# Remove Libre Office to reduce VM disk size
apt-get -y remove --purge libreoffice*
apt-get -y clean
apt-get -y autoremove
