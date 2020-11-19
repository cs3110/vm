# The CS 3110 VM: No-Vagrant Variant

1. Download and install [VirtualBox][] and [Ubuntu 20.04 Desktop][ubuntu]. 
   - Create a new VM in VirtualBox and install Ubuntu. Choose the minimal
     install (i.e., fewer apps).
   - Use 1024 MB RAM, 1 CPU, 16 MB video RAM, and VMSVGA graphics controller,
     and a 64 GB dynamically-sized hard drive. We deliberately keep the
     fixed hardware requirements minimal for students who have lower-end
     hardware. But the drive needs to have room to grow for projects later
     in the semester.
   - Make the machine name "cs3110vm", the username and password both "camel",
     and the full name "OCaml Programmer". Log in automatically.

2. Open Terminal. Right-click and add it to favorites. Run
   ```
   sudo apt update
   sudo apt upgrade
   sudo apt install build-essential dkms linux-headers-$(uname -r) \
     virtualbox-guest-utils virtualbox-guest-dkms virtualbox-guest-x11 \
     vim emacs gnuplot rlwrap
   ```
   Then reboot.  Enable Shared Clipboard->Bidirectional.
   
3. To install OPAM, run
   ```
   sudo apt install pkg-config opam
   opam init --bare
   opam switch create cs3110-2020fa ocaml-base-compiler.4.10.0
   eval $(opam env)
   opam install -y utop ounit qtest yojson csv lwt lwt_ppx menhir \
     ansiterminal lambda-term merlin ocp-indent user-setup \
     bisect_ppx-ocamlbuild graphics
   opam user-setup install
   ```
   Logout (or reboot) to get the `.profile` changes working in all new shells.

4. To install VS Code, run
   ```
   # VS Code
   sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EB3E94ADBE1229CF
   sudo add-apt-repository -y "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
   sudo apt update
   sudo apt install code   
   ```
   Add VS Code to favorites. Launch it. Disable the welcome screen. Copy
   `vsc_settings.json` into user settings. Install the "OCaml and Reason IDE"
   extension. Create a `~/3110` folder and test that OCaml language support is
   working. Make sure not to leave any files or folders open when you close it,
   otherwise they will be opened in the distributed VM.

5. Download the (free) caravan wallpaper.
   ```
   cd ~/Pictures
   wget https://wonderfulengineering.com/wp-content/uploads/2016/01/eqypt-wallpaper-12.jpg
   ```
   Set it as the desktop background.

6. Run `usermod -a -G vboxsf camel` to give the account access to shared 
   folders. Create a shared folder to test they are working, then delete it
   and any others that might exist.

7. Delete `.utop_history` and finally delete `.bash_history`.

8. If you've resized the window, resize it back so that it's fairly small,
   otherwise when students bring it up on their own small monitor it might not
   fit. The size of the VirtualBox boot window is good.

9. Shutdown the machine. Double check the VM settings in VirtualBox to solve any
   invalid configuration issues. Make the display scale factor 100%, if you've
   changed it (for example, if you're on a Retina display). Then export the
   appliance. Set its name to "cs3110-2020fa-ubuntu".

[VirtualBox]: https://www.virtualbox.org/wiki/Downloads
[ubuntu]: https://releases.ubuntu.com/20.04/
[caravan]: https://wonderfulengineering.com/wp-content/uploads/2016/01/eqypt-wallpaper-12.jpg

