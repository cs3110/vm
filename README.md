# The CS 3110 VM

Here's how to create the 3110 VM for a given semester.

1. Download and install [vagrant][] and [VirtualBox][].

2. Clone this repo.  Update `Vagrantfile` to at least change
   the semester.  Update `root-setup.sh` and `user-setup.sh`
   as desired; you'll at least want to update the OCaml
   switch specified in the latter.  Then run:

        vagrant up
        
   That will take a long time (maybe an hour) to complete.
   When it's done, reboot the VM.
   
   		vagrant halt
   		vagrant up

3. Login to the VM.  The username and password are both `vagrant`.

   A. In the Virtual Box host, click on Devices->Insert Guest Additions CD image.
   Click "Run" on the dialog box that appears, then type the password. When
   installation is finished, eject the CD.  Reboot the VM.   

   B. In Virtual Box->Devices, enable Drag and Drop and Shared Clipboard, both
   bidirectional.

   C. From the Ubuntu terminal, run `bash post_provision.sh`.
   
   D. Launch VS Code once to test Merlin.  Make sure not to leave any files
   open when you quit it, otherwise those files will be opened on the
   distributed VM when Code is launched.
   
   E. Set the Chrome home page to [CS 3110][3110] and make Chrome the default browser.

   F. Clear the Chrome browsing history, delete `.utop_history`, `post_provision.sh`,
   and finally delete `.bash_history`.
   
   G. If you've resized the window, resize it back so that it's fairly small,
   otherwise when students bring it up on their own small monitor it might not
   fit.  The size of the VirtualBox boot window is good.

4. Shutdown the machine. Double check the VM settings in VirtualBox to solve any
   invalid configuration issues. Make the display scale factor 100%, if you've
   changed it (for example, if you're on a Retina display). Delete any shared
   folders, which might have been created automatically. Then export the
   appliance.

[vagrant]: http://www.vagrantup.com/downloads.html
[VirtualBox]: https://www.virtualbox.org/wiki/Downloads
[3110]: http://cs3110.org
[man]: http://caml.inria.fr/pub/docs/manual-ocaml/
[cms]: http://cms.csuglab.cornell.edu/
