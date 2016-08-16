# Vagrant install scripts for the 3110 VM

1. Download and install [vagrant][] and [VirtualBox][]. 

2. Download and install the 3110 virtual machine.
        
        git clone https://github.com/cs3110/vm.git
        cd vm
        vagrant up

   **Note:** `vagrant up` will take a long time (about 90 min with an on-campus
   network connection) the first time.

3. Reboot the VM to start the GUI.

        vagrant halt
        vagrant up

4. Login to the VM.  The username and password are both "ubuntu".

[vagrant]: http://www.vagrantup.com/downloads.html
[VirtualBox]: https://www.virtualbox.org/wiki/Downloads
