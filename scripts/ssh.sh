#!/bin/bash

# Begin by starting the SSH servers
# docker-compose up -d
# Login to the ubuntu client
# docker-compose run ubuntu bash

# Ubuntu Client: ubuntu
# SSH Server A: ssh-a
# SSH Server B: ssh-b

####################################################################
# Log into an SSH server using a password - Password: SUPERSECRET! #
####################################################################

# Execute on ubuntu
ssh cedrus@ssh-a

##################################################################
# Generate a key, and store on the servers you wish to access    #
# No more passwords! Unless you want to add one to the key       #
##################################################################

# Execute on ubuntu
# docker-compose run ubuntu bash
ssh-keygen -f ~/.ssh/cedrus_ssh_key
ssh-copy-id -i ~/.ssh/cedrus_ssh_key cedrus@ssh-a
ssh-copy-id -i ~/.ssh/cedrus_ssh_key cedrus@ssh-b

# Log into the server
ssh -i ~/.ssh/cedrus_ssh_key cedrus@ssh-a

##################################################################
# Upload a file to SSH server                                    #
##################################################################

# Execute on ubuntu
# docker-compose run ubuntu bash
scp help.sh cedrus@ssh-a:/home/cedrus/help.sh

# Validate file was moved by SSHing into the ssh-a server
ssh cedrus@ssh-a

##################################################################
# Create a tunnel to ssh-b from ssh-a                            #
# Use: Access ssh-b from ubuntu                                  #
# Useful if ssh-a can hit ssh-b, but ubuntu can't.  Ubuntu can   #
# hit ssh-a                                                      #
# ubuntu -> ssh-a -> ssh-b                                       #
##################################################################

# Execute on ubuntu
# docker-compose run ubuntu bash
# NOTE: Using SSH key from previous commands for simplicity
# NOTE: Keep the PID from the next command and run "kill -9 $(lsof -ti:4200)" to stop the tunnel
ssh -i ~/.ssh/cedrus_ssh_key -4 -NTL 4200:ssh-b:22 -f cedrus@ssh-a

# Log in using the tunnel created
ssh -i ~/.ssh/cedrus_ssh_key cedrus@localhost -p 4200

##################################################################
# Create a reverse shell to ssh-b from ssh-a on port 4200        #
# Use: Access ssh-b from ubuntu                                  #
# Useful if ssh-b is behind a firewall that ssh-a cannot hit     #
# but both ubuntu and ssh-b can hit ssh-a                        #
# ubuntu -> ssh-a <- ssh-b                                       #
##################################################################

# Execute on running ssh-b container (it will hang until you kill the process)
# docker-compose exec -u cedrus ssh-b bash
ssh -NR 4200:localhost:22 cedrus@ssh-a

# Execute on ubuntu
# docker-compose run ubuntu bash
ssh cedrus@ssh-a
ssh localhost -p 4200