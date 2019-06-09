#!/bin/bash

# rsync can work locally like cp and copy files
rsync man.sh man2.sh

# rsync can also work like scp and copy to a remote host
# rsync must be available on remote host!
# Copy man.sh -> ssh-a:man2.sh, SSH into server to verify it was copied!
rsync man.sh cedrus@ssh-a:man2.sh

# rsync can even copy link contents
# Set up example with links
mkdir folder1
echo "contents12345" > folder1/file1
echo "contentsABCDE" > folder1/file2
mkdir linked-folder
ln ./folder1/file1 linked-folder/file1 
ln ./folder1/file2 linked-folder/file2
# Copy contents from links, not just links themselves
# cp linked-folder/* to copied-folder will copy the link, which won't work remotely
rsync --copy-links linked-folder/* copied-folder