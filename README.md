# The CS 3110 VM: Lubuntu Variant

1. Download and install [VirtualBox][] and [lubuntu][]. 
   - Create a new VM in VirtualBox and install Lubuntu.
   - Use 1024 MB RAM, 1 CPU, 16 MB video RAM, and VMSVGA graphics controller,
     and a 64 GB dynamically-sized hard drive. We deliberately keep the
     fixed hardware requirements minimal for students who have lower-end
     hardware. But the drive needs to have room to grow for projects later
     in the semester.
   - Make the username and password both "camel", and the full name "OCaml
     Programmer".
   - After first boot, let lubuntu do a full upgrade.

2. Open QTerminal. Add it to the quick launcher by dragging from the start menu
   to the launcher. Run
   ```
   sudo apt update
   sudo apt upgrade
   sudo apt install virtualbox-guest-utils
   ```
   Then reboot.  Enable Shared Clipboard->Bidirectional.
   
3. To install OPAM, run
   ```
   sudo apt install pkg-config opam
   opam init -y --bare
   opam switch create cs3110-2020fa ocaml-base-compiler.4.10.0
   eval $(opam env)
   opam install -y utop ounit qtest yojson csv lwt lwt_ppx menhir \
     ansiterminal lambda-term merlin ocp-indent user-setup \
     bisect_ppx-ocamlbuild graphics
   opam user-setup install
   ```
   Reboot (or logout) to get the `.profile` changes working in all new shells.

4. To install VS Code, run
   ```
   # VS Code
   sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EB3E94ADBE1229CF
   sudo add-apt-repository -y "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
   sudo apt update
   sudo apt install code   
   ```
   Add VS Code to the quick launcher. Launch it. Disable the welcome screen.
   Copy `vsc_settings.json` into user settings. Install the "OCaml and Reason
   IDE" extension. Create a `~/3110` folder and test that OCaml language support
   is working. Make sure not to leave any files or folders open when you close
   it, otherwise they will be opened in the distributed VM.

5. Download the free caravan wallpaper.
   ```
   cd ~/Pictures
   wget https://wonderfulengineering.com/wp-content/uploads/2016/01/eqypt-wallpaper-12.jpg ~/Pictures
   ```
   Set it as the desktop background. Zoom the image to fill the screen.

6. Delete `.utop_history` and finally delete `.bash_history`.

7. If you've resized the window, resize it back so that it's fairly small,
   otherwise when students bring it up on their own small monitor it might not
   fit.  The size of the VirtualBox boot window is good.

8. Shutdown the machine. Double check the VM settings in VirtualBox to solve any
   invalid configuration issues. Make the display scale factor 100%, if you've
   changed it (for example, if you're on a Retina display). Delete any shared
   folders, which might have been created automatically. Then export the
   appliance. Set its name to "CS 3110 Fall 2020 VM".

[VirtualBox]: https://www.virtualbox.org/wiki/Downloads
[lubuntu]: https://lubuntu.me/downloads/
[caravan]: https://wonderfulengineering.com/wp-content/uploads/2016/01/eqypt-wallpaper-12.jpg

