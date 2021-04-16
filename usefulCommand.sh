debian@debian10:/opt/mycroft/skills/projector-switch-skill$ ssh keygen
ssh: Could not resolve hostname keygen: Name or service not known
debian@debian10:/opt/mycroft/skills/projector-switch-skill$ ssh-keygen
Generating public/private rsa key pair.
Enter file in which to save the key (/home/debian/.ssh/id_rsa): 
Enter passphrase (empty for no passphrase): 
Enter same passphrase again: 
Your identification has been saved in /home/debian/.ssh/id_rsa.
Your public key has been saved in /home/debian/.ssh/id_rsa.pub.
The key fingerprint is:
SHA256:f[poule]fX...... debian@debian10.linuxvmimages.local

debian@debian10:/opt/mycroft/skills/projector-switch-skill$ ssh-copy-id root@10.0.0.154
The authenticity of host '10.0.0.154 (10.0.0.154)' can't be established.
ECDSA key fingerprint is SHA256://F9jxpAg3OlfB2.......
Are you sure you want to continue connecting (yes/no)? yes
/usr/bin/ssh-copy-id: INFO: attempting to log in with the new key(s), to filter out any that are already installed
/usr/bin/ssh-copy-id: INFO: 1 key(s) remain to be installed -- if you are prompted now it is to install the new keys
root@10.0.0.154's password: 

Number of key(s) added: 1

Now try logging into the machine, with:   "ssh 'root@10.0.0.154'"
and check to make sure that only the key(s) you wanted were added.


====



debian@debian10:/opt/mycroft/skills/projector-switch-skill$ mycroft-pip install paramiko
Collecting paramiko
  Downloading paramiko-2.7.2-py2.py3-none-any.whl (206 kB)
     |████████████████████████████████| 206 kB 4.1 MB/s 
Collecting pynacl>=1.0.1
  Downloading PyNaCl-1.4.0-cp35-abi3-manylinux1_x86_64.whl (961 kB)
     |████████████████████████████████| 961 kB 4.6 MB/s 
Requirement already satisfied: cryptography>=2.5 in /home/debian/mycroft-core/.venv/lib/python3.7/site-packages (from paramiko) (3.4.6)
Collecting bcrypt>=3.1.3
  Downloading bcrypt-3.2.0-cp36-abi3-manylinux2010_x86_64.whl (63 kB)
     |████████████████████████████████| 63 kB 1.5 MB/s 
Requirement already satisfied: cffi>=1.4.1 in /home/debian/mycroft-core/.venv/lib/python3.7/site-packages (from pynacl>=1.0.1->paramiko) (1.14.5)
Requirement already satisfied: six in /home/debian/mycroft-core/.venv/lib/python3.7/site-packages (from pynacl>=1.0.1->paramiko) (1.15.0)
Requirement already satisfied: pycparser in /home/debian/mycroft-core/.venv/lib/python3.7/site-packages (from cffi>=1.4.1->pynacl>=1.0.1->paramiko) (2.20)
Installing collected packages: pynacl, bcrypt, paramiko
Successfully installed bcrypt-3.2.0 paramiko-2.7.2 pynacl-1.4.0
WARNING: You are using pip version 20.0.2; however, version 21.0.1 is available.
You should consider upgrading via the '/home/debian/mycroft-core/.venv/bin/python -m pip install --upgrade pip' command.

