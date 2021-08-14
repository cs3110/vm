# The CS 3110 VM

1. Download and install [VirtualBox][], and download
   [Ubuntu 20.04 Desktop][ubuntu].

   - Create a new VM in VirtualBox. Name it `cs3110vm-2021fa-ubuntu`, replacing
     `2021fa` with the current semester. For the OS, choose Linux/Ubuntu 64 bit.
     Use 1024 MB RAM, and a 64 GB dynamically-sized hard drive. Keep the default
     1 CPU, 16 MB video RAM, and VMSVGA graphics controller. We deliberately
     keep the hardware requirements minimal for students who have lower-end
     hardware. But the drive needs to have room to grow for projects later in
     the semester.

   - Install Ubuntu. Choose the minimal install (i.e., fewer apps). Make the
     machine name "cs3110vm", the username and password both "camel", and the
     full name "OCaml Programmer". Log in automatically.

   - After installation, you'll be asked to enable a bunch of features such
     as error reporting, location services, etc. Don't enable them, since
     students should make those choices themselves.

   - Soon after rebooting, Software Updater will want to install updates. Let
     it. Then reboot again.

   - Remove extraneous icons from favorites.

2. Open Terminal. Right-click and add it to favorites. Run
   ```
   sudo apt update
   sudo apt upgrade
   sudo apt install build-essential dkms linux-headers-$(uname -r) \
     virtualbox-guest-utils virtualbox-guest-dkms virtualbox-guest-x11 \
     vim emacs
   ```
   Then reboot again.  Enable Shared Clipboard->Bidirectional.

3. To install OPAM, run
   ```
   sudo apt install pkg-config opam
   opam init --bare -a -y
   ```
   Then follow the install instructions in the [CS 3110 textbook][op] to create
   a switch for the current semester. Logout (or reboot) to get the `.profile`
   changes working in all new shells.

4. To install VS Code, download the .deb package installer from
   [Microsoft][vsc] and follow the instructions to install it. Then launch VSC
   and add it to favorites. Copy-paste `vsc_settings.json` into user settings.
   Install the "OCaml Platform" extension. Create a `~/3110` folder and test
   that OCaml language support is working. Make sure not to leave any files or
   folders open when you close it, otherwise they will be opened in the
   distributed VM.

5. Download the (free) caravan wallpaper.
   ```
   cd ~/Pictures
   wget https://wonderfulengineering.com/wp-content/uploads/2016/01/eqypt-wallpaper-12.jpg
   ```
   Set it as the desktop background. It is also cached locally here in this repo
   at `caravan.jpg`.

6. Run `sudo usermod -a -G vboxsf camel` to give the account access to shared
   folders. Create a shared folder to test they are working, then delete it and
   any others that might exist. The instructions to create shared folders are in
   the Canvas OCaml installation module. Note that shutting down the VM really
   does seem to be necessary when modifying these settings.

7. Delete `.utop-history` and finally delete `.bash_history`.

8. If you've resized the window, resize it back so that it's fairly small,
   otherwise when students bring it up on their own small monitor it might not
   fit. The size of the VirtualBox boot window is good.

9. Shutdown the machine. Double check the VM settings in VirtualBox to solve any
   invalid configuration issues. Make sure the display scale factor is 100%,
   especially if you have a Retina display. Then export the appliance.

[VirtualBox]: https://www.virtualbox.org/wiki/Downloads
[ubuntu]: https://releases.ubuntu.com/20.04/
[op]: https://cs3110.github.io/textbook/
[vsc]: https://code.visualstudio.com/docs/setup/linux
