git clone https://github.com/facebookresearch/llama.git
pip uninstall transformer-engine

apt-get update
pip3 install jupyter jupyterlab==3.4.2 jupyterlab-git==0.37.1


#wget...
#TRANSFORM=`python -c "import transformers;print('/'.join(transformers.__file__.split('/')[:-1])+'/models/llama/convert_llama_weights_to_hf.py')"`
#python ${TRANSFORM} --input_dir models --model_size 7B --output_dir models_hf/7B
#huggingface-cli login --token $HUGGING_FACE_ACCESS_TOKEN