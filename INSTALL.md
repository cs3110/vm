# Installation instructions

After installing the VM as described in `README.md`, there are a few manual
configuration tasks that haven't yet been scripted.  These aren't
necessary to perform, but they make the machine a little nicer for
distribution:

1. Set the Chrome home pages to [CS 3110][3110], the [OCaml manual][man], and [CMS][cms].
   [3110]: http://www.cs.cornell.edu/Courses/cs3110/2016fa/
   [man]: http://caml.inria.fr/pub/docs/manual-ocaml/
   [cms]: http://cms.csuglab.cornell.edu/
2. Change the desktop background to `caravan.jpg`, located 
   [here](https://github.com/cs3110/vm/blob/master/caravan.jpg).
   Save it in ~/Pictures for easy of installation.
3. Clear the Chrome browsing history, delete `.utop_history`, 
   and finally delete `.bash_history`.
   
Before exporting the VM for other people to use, reconfigure
the VM settings in VirtualBox to solve any invalid configuration issues.
   
Optionally, before exporting the VM to ship to others, you can
reduce the size of the .ova file by about 1 GB by following the
instructions here:

  http://superuser.com/questions/529149/how-to-compact-virtualboxs-vdi-file-size
  
The `dd` method seems to work better than the `zerofree` method.

You'll need to convert between VDI and VMDK disks as described here:

  https://nfolamp.wordpress.com/2010/06/10/converting-vmdk-files-to-vdi-using-vboxmanage/
  
To build the 32-bit version of the VM, just change "64" to "32" in Vagrantfile.
  