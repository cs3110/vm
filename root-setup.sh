# Change the time zone
timedatectl set-timezone America/New_York

# Set the default user's password
echo "ubuntu:ubuntu" | chpasswd

# Install packages
apt-get update
apt-get upgrade
apt-get install -y ubuntu-desktop chromium-browser default-jdk pv virtualbox-guest-utils virtualbox-guest-dkms
usermod -a -G vboxsf ubuntu

apt-get install -y m4 ocaml ocaml-native-compilers camlp4-extra opam 
apt-get install -y vim vim-gtk emacs

# Remove Libre Office to reduce VM disk size
apt-get remove --purge libreoffice*
apt-get clean
apt-get autoremove

# Install sublime.  The until loop is because the GPG server that 
#   add-apt-repository contacts is flaky and sometimes fails to
#   return a key.
until add-apt-repository ppa:webupd8team/sublime-text-3 
do sleep 3
done
apt-get update
apt-get install sublime-text-installer

