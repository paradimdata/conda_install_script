#!/bin/bash
# miniconda and conda-forge installation script

wget --quiet --no-check-certificate https://repo.anaconda.com/miniconda/Miniconda3-py38_4.9.2-Linux-x86_64.sh  -O miniconda.sh 
chmod +x /miniconda.sh
bash miniconda.sh -b 
export PATH="/home/$USER/miniconda3/bin:$PATH"
conda config --set auto_activate_base false 
conda create -n nionswift -y  
conda update -n base -c default conda -y
conda init bash
source ~/.bashrc
conda activate minimal_ds
conda config --env --add channels conda-forge
conda config --env --set channel_priority strict
conda install nionswift nionswift-tool pandas scikit-learn matplotlib notebook -y 
echo done
