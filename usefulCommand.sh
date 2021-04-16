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
SHA256:f[poule]fX7pkTeojQ9MG5u6FoErTgAuc0c+hDe1HVGQx/83s debian@debian10.linuxvmimages.local

debian@debian10:/opt/mycroft/skills/projector-switch-skill$ ssh-copy-id root@10.0.0.154
The authenticity of host '10.0.0.154 (10.0.0.154)' can't be established.
ECDSA key fingerprint is SHA256://F9jxpAg3OlfB2ynFEHCE78EOToF1PZptQvG5HduKk.
Are you sure you want to continue connecting (yes/no)? yes
/usr/bin/ssh-copy-id: INFO: attempting to log in with the new key(s), to filter out any that are already installed
/usr/bin/ssh-copy-id: INFO: 1 key(s) remain to be installed -- if you are prompted now it is to install the new keys
root@10.0.0.154's password: 

Number of key(s) added: 1

Now try logging into the machine, with:   "ssh 'root@10.0.0.154'"
and check to make sure that only the key(s) you wanted were added.


====




