#!/usr/bin/env bash
set -e

export tempdir="/var/tmp/workstationsetup"

rm -rf $tempdir

mkdir --parents $tempdir



# ## PYTHON

# sudo apt update
# sudo apt upgrade -y
# sudo apt install -y make build-essential libssl-dev zlib1g-dev \
# libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm \
# libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev

# curl "https://raw.githubusercontent.com/pyenv/pyenv-installer/56d708c8bda56370c4bc1e2fce68087cfcd007eb/bin/pyenv-installer" -o "$tempdir/pyenv-installer"
# chmod a+x "$tempdir/pyenv-installer"
# $tempdir/pyenv-installer


# ## AWS

# ##### AWS CLI V2

# curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "$tempdir/awscliv2.zip"
# unzip -o -d $tempdir $tempdir/awscliv2.zip 
# sudo $tempdir/aws/install --update


# aws --version


# ##### AWS SSM CLI Plugin

# curl "https://s3.amazonaws.com/session-manager-downloads/plugin/latest/ubuntu_64bit/session-manager-plugin.deb" -o "$tempdir/session-manager-plugin.deb"

# sudo dpkg -i $tempdir/session-manager-plugin.deb

##### EB CLI


sudo apt update
sudo apt upgrade -y
sudo apt install -y build-essential zlib1g-dev libssl-dev \
libncurses-dev libffi-dev libsqlite3-dev libreadline-dev libbz2-dev \
build-essential zlib1g-dev libssl-dev libncurses-dev \
libffi-dev libsqlite3-dev libreadline-dev libbz2-dev

mkdir --parents $tempdir/aws-elastic-beanstalk-cli-setup


git clone https://github.com/aws/aws-elastic-beanstalk-cli-setup.git $tempdir/aws-elastic-beanstalk-cli-setup/

$tempdir/aws-elastic-beanstalk-cli-setup/scripts/bundled_installer

    # # # Note: To complete installation, ensure `eb` is in PATH. You can ensure this by executing:

    # # # 1. Bash:

    # # #    echo 'export PATH="/home/kwhatcher/.ebcli-virtual-env/executables:$PATH"' >> ~/.bash_profile && source ~/.bash_profile

    # # # 2. Zsh:

    # # #    echo 'export PATH="/home/kwhatcher/.ebcli-virtual-env/executables:$PATH"' >> ~/.zshenv && source ~/.zshenv

   
    # # # - NOTE: To complete installation, ensure `python` is in PATH. You can ensure this by executing:
   
    # # #   1. Bash:
   
    # # #      echo 'export PATH=/home/kwhatcher/.pyenv/versions/3.7.2/bin:$PATH' >> /home/kwhatcher/.bash_profile && source /home/kwhatcher/.bash_profile
   
    # # #   2. Zsh:
   
    # # #      echo 'export PATH=/home/kwhatcher/.pyenv/versions/3.7.2/bin:$PATH' >> /home/kwhatcher/.zshrc && source /home/kwhatcher/.zshrc