# Installation instructions

After installing the VM as described in `README.md`, there are a few manual
configuration tasks that haven't yet been scripted.  These aren't
necessary to perform, but they make the machine a little nicer for
distribution:

1. Set the Chrome home pages to [CS 3110][3110], the [OCaml manual][man], and [CMS][cms].
   [3110]: http://www.cs.cornell.edu/Courses/cs3110/2016fa/
   [man]: http://caml.inria.fr/pub/docs/manual-ocaml/
   [cms]: http://cms.csuglab.cornell.edu/
2. Change the desktop background to `caravan.jpg` (located in the
   same directory as this file.)
3. In the Ubuntu settings app, go to the Security & privacy pane, and
   unselect "waking from suspend" and "returning from blank screen"
4. Clear the Chrome browsing history, delete `.utop_history`, 
   and finally delete `.bash_history`.
   
Before exporting the VM for other people to use, you must reconfigure
the VM settings in VirtualBox to change serial port COM1 to Disconnected.
Otherwise they won't be able to start the VM.
   
Optionally, before exporting the VM to ship to others, you can
reduce the size of the .ova file by about 1 GB by following the
instructions here:

  http://superuser.com/questions/529149/how-to-compact-virtualboxs-vdi-file-size

You'll need to convert between VDI and VMDK disks as described here:

  http://www.dedoimedo.com/computers/virtualbox-convert.html
  