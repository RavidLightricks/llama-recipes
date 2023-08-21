git clone https://github.com/facebookresearch/llama.git
pip uninstall transformer-engine
#wget...
#TRANSFORM=`python -c "import transformers;print('/'.join(transformers.__file__.split('/')[:-1])+'/models/llama/convert_llama_weights_to_hf.py')"`
#python ${TRANSFORM} --input_dir models --model_size 7B --output_dir models_hf/7B
#huggingface-cli login --token $HUGGING_FACE_ACCESS_TOKEN