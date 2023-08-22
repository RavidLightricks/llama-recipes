# support git lfs
apt-get update -y
apt-get install git-lfs -y
git lfs install
git lfs pull
# For a more compact command line
echo "export PS1='\w$ '" >> ~/.bashrc
# Add root dir to python path
echo "export PYTHONPATH=$PWD" >> ~/.bashrc

# Prerequisite to use cv2 on cnvrg
apt-get install -y libgl1-mesa-glx
# setup LTX private pypi passwordpip
grep -q 'machine artifactory.lightricks.com' ~/.netrc || printf "\nmachine artifactory.lightricks.com login pypi-reader password $LTX_PYPI \n" >> ~/.netrc


git clone https://github.com/facebookresearch/llama.git
pip uninstall transformer-engine

apt-get update
pip3 install jupyter jupyterlab==3.4.2 jupyterlab-git==0.37.1


#wget...
#TRANSFORM=`python -c "import transformers;print('/'.join(transformers.__file__.split('/')[:-1])+'/models/llama/convert_llama_weights_to_hf.py')"`
#python ${TRANSFORM} --input_dir models --model_size 7B --output_dir models_hf/7B
huggingface-cli login --token $HUGGING_FACE_ACCESS_TOKEN
