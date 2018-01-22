# Vagrant install scripts for the 3110 VM

1. Download and install [vagrant][] and [VirtualBox][].

2. Download and install the 3110 virtual machine.

        git clone https://github.com/cs3110/vm.git
        cd vm
        vagrant up

3. Reboot the VM to start the GUI.

        vagrant halt
        vagrant up

4. Login to the VM.  The username and password are both `vagrant`.

   A. In Virtual Box->Devices, enable Drag and Drop and Shared Clipboard, both
   bidirectional.

   B. Inside the VM, logged in as `vagrant`, run the commands in `post_provision.sh`.

   C. Install Komodo Edit manually by following the instructions on Active
   State's website.  (Unfortunately, there is no current PPA available to
   do this through apt.)

   C. Set the Chrome home pages to [CS 3110][3110], the [OCaml manual][man], and [CMS][cms].

   D. Clear the Chrome browsing history, delete `.utop_history`,
   and finally delete `.bash_history`.

5. Shutdown the machine.  Double check the VM settings in VirtualBox to solve any
   invalid configuration issues.

6. Optionally, before exporting the VM to ship to others, you can
	reduce the size of the .ova file by about 1 GB by following [these
	instructions](http://superuser.com/questions/529149/how-to-compact-virtualboxs-vdi-file-size).
  	The `dd` method seems to work better than the `zerofree` method.
	You'll need to convert between VDI and VMDK disks as described
	[here](https://nfolamp.wordpress.com/2010/06/10/converting-vmdk-files-to-vdi-using-vboxmanage/).

7. To build the 32-bit version of the VM, just change "64" to "32" in Vagrantfile.

[vagrant]: http://www.vagrantup.com/downloads.html
[VirtualBox]: https://www.virtualbox.org/wiki/Downloads
[3110]: http://www.cs.cornell.edu/Courses/cs3110/2016fa/
[man]: http://caml.inria.fr/pub/docs/manual-ocaml/
[cms]: http://cms.csuglab.cornell.edu/
