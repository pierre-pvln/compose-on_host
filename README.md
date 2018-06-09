Configs en scripts for docker and docker-compose on dockerhost for various integrations and stacks

dc-xxx = docker-compose shell script

d-xxx  = docker shell script

Below folder structure should be present on the host which runs docker:
```
a_folder\on_host     shell scripts to build and run the docker configurations (YOU SHOULD BE HERE)
        \services    folder with the various configurations of services
        \stacks      folder with the docker compose yaml files
        \storage     not used yet
```

Below folder structure should be present on the workstation on which development is done:
```
a_folder\dev_scripts command/batch files to interact with docker host
        \secrets     secrets not to be put on github
        \on_host     shell scripts to build and run the docker configurations (OR YOU SHOULD BE HERE)
        \services    folder with the various configurations of services    
        \stacks      folder with the docker compose yaml files
        \storage     not used yet
```

## run the script on docker host

```shell
# TODO: Check if SSH key exists
#       if not create one
#  
# add option to use std output file names and not ask for confirmation
# add option to not ask for passphrase

ssh-keygen -t rsa -b 4096 -C "pierre@pvln.nl"

# add generated ssh key to github account

# TODO: check if git is already installed
#       if not installed then

git config --global user.name Pierre Veelen
git config --global user.email pierre@pvln.nl
git config --global color.ui auto

#       otherwise start here

mkdir -p ~/myDocker/on_host
cd ~/myDocker/on_host
# Set remote
git remote add origin git@github.com:pierre-pvln/compose-host.git
# Verify new remote
git remote -v
git pull origin master

mkdir -p ~/myDocker/services
cd ~/myDocker/services
git init
# Set remote
git remote add origin git@github.com:pierre-pvln/compose-services.git
# Verify new remote
git remote -v
git pull origin master

mkdir -p ~/myDocker/stacks
cd ~/myDocker/stacks
git init
# Set remote
git remote add origin git@github.com:pierre-pvln/compose-stacks.git
# Verify new remote
git remote -v
git pull origin master

mkdir -p ~/myDocker/storage
cd ~/myDocker/storage
git init
# Set remote
git remote add origin git@github.com:pierre-pvln/compose-storage.git
# Verify new remote
git remote -v
git pull origin master
```
