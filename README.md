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
   
   D. Launch VS Code once to get its annoying initial one-time launch of Firefox out of 
   the way.  Make sure not to leave any files open when you quit it, otherwise
   those files will be opened on the distributed VM when Code is launched.
   
   E. Set the Chrome home page to [CS 3110][3110] and make Chrome the default browser.

   F. Clear the Chrome browsing history, delete `.utop_history`, `post_provision.sh`,
   and finally delete `.bash_history`.
   
   G. Resize the window so that it's fairly small, otherwise when students bring it
   up on their own small monitor it might not fit.  The size of the VirtualBox
   boot window is good.

4. Shutdown the machine.  Double check the VM settings in VirtualBox to solve any
   invalid configuration issues.  Delete any shared folders.  Then export the appliance.

5. Optionally, before exporting the VM to ship to others, you can
	reduce the size of the .ova file by about 1 GB by following [these
	instructions](http://superuser.com/questions/529149/how-to-compact-virtualboxs-vdi-file-size).
  	The `dd` method seems to work better than the `zerofree` method.
	You'll need to convert between VDI and VMDK disks as described
	[here](https://nfolamp.wordpress.com/2010/06/10/converting-vmdk-files-to-vdi-using-vboxmanage/).

[vagrant]: http://www.vagrantup.com/downloads.html
[VirtualBox]: https://www.virtualbox.org/wiki/Downloads
[3110]: http://cs3110.org
[man]: http://caml.inria.fr/pub/docs/manual-ocaml/
[cms]: http://cms.csuglab.cornell.edu/
