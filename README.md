# The CS 3110 VM

You can download the CS 3110 VM from [Cornell Box][3110vms]. It comes in two flavors: ARM for Macs with Apple Silicon, and AMD64 for PCs and Macs with Intel chips. Both are based on Ubuntu 24.04 LTS for long-term usability. Installation and usage instructions can be found in the [3110 textbook][op-vm]. Here is how we created the VM.

[3110vms]: https://cornell.box.com/v/cs3110-virtual-machines
[op-vm]: https://cs3110.github.io/textbook/chapters/appendix/vm.html

## The ARM Version

1. Install VMware Fusion Pro on your Mac.
2. Download the Ubuntu 24.04 ARM Server. (As of August 2024 there was no ARM Desktop ISO.)
3. Create a new VM in Fusion using the Server ISO. Customize the settings. Name the VM "cs3110vm-24.04-arm". Increase the disk space to 64 GB. Start the VM.

Continue below under the heading "Configuring the VM".

## The AMD64 Version

1. Install VMware Workstation Pro on your PC or VMware Fusion Pro on your Mac.
2. Download the Ubuntu 24.04 AMD64 Server. (As of August 2024 there was an AMD64 Desktop ISO but it always hung during installation for me.)
3. Create a new VM in Workstation using the Server ISO. Use a custom installation. Change the disk size to 64 GB. Name the VM "cs3110vm-24.04-amd64".

## Configuring the VM

4. Follow the prompts to configure the machine. Name it either "cs3110vm-24.04-arm" or "cs3110vm-24.04-amd64" as appropriate. Install the full server package intended for human login. Make your name "OCaml Programmer", the computer name "cs3110vm", and the username and password both "camel". Don't enable Ubuntu Pro. Don't install OpenSSH server. Don't install any additional server snaps.   
5. Remove the CD ISO then reboot. Login. Do a `sudo apt update` and `sudo apt upgrade` and `sudo shutdown -r now`.
6. Do `sudo apt install ubuntu-desktop` and `sudo shutdown -r now`. It seems to take two minutes for "networkd" to launch.
7. After the reboot, do `sudo apt install build-essential linux-headers-$(uname -r) vim emacs`. No configuration for Postfix mail.
8. Then do `sudo apt install pkg-config opam`. Do `opam init` and let it create a default switch. Install the OPAM packages currently recommended in the textbook.
9.  Uninstall libreoffice with `sudo apt purge libreoffice*`, then `sudo apt autoremove`, then `sudo apt autoclean`.
10. Install VS Code following Microsoft's current instructions. The Deb package download works, even though there's a permission denied warning at the end. Install OCaml Platform extension. Install the recommended VS Code settings from the textbook. Test that language integration works. Close any open folders and remove any test files.
11. Pin Terminal and Code to the dash. Unpin unneeded apps.
12. Go to Ubuntu Settings -> Users and enable automatic login.
13. Go to Ubuntu Settings -> Privacy and Security and disable screen blank and automatic screen lock.
14. 14. Download the (free) caravan wallpaper.
   ```
   cd ~/Pictures
   wget https://wonderfulengineering.com/wp-content/uploads/2016/01/eqypt-wallpaper-12.jpg
   ```
   Set it as the desktop background. It is also cached locally here in this repo at `caravan.jpg`.
15. Delete `.utop-history` and finally delete `.bash_history`.
16. Shutdown the machine.
   
## Export the VM

On VMware Fusion:

```console
$ /Applications/VMware\ Fusion.app/Contents/Library/VMware\ OVF\ Tool/ovftool --acceptAllEulas pathToVM/nameOfVM.vmwarevm/nameOfVM.vmx destinationPath/nameOfVM.ova
```

On VMware Workstation:

- File -> Export to OVF
- Choose the destination path and name. Manually add ".ova" extension to the name.

## Upload the VM

Put it in Box and configure a custom URL for it.
