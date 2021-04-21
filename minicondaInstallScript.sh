#!/bin/bash
# miniconda and conda-forge installation script

wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh #bash said that this was not the latest version
bash Miniconda3-latest-Linux-x86_64.sh -b 
export PATH="/home/$USER/miniconda3/bin:$PATH"
conda config --set auto_activate_base false 
conda create -n minimal_ds -y  
conda update -n base -c default conda -y
conda init bash
source ~/.bashrc
conda activate minimal_ds
conda config --env --add channels conda-forge
conda config --env --set channel_priority strict
conda install pandas scikit-learn matplotlib notebook -y 
echo done
