#!/bin/bash

#SBATCH --nodes=1
#SBATCH --gres=gpu:4
#SBATCH --cpus-per-task=10
#SBATCH --mem=24GB
#SBATCH --time=72:00:00

module purge
source ~/myenv/bin/activate

python -c "print('begin_raw_vggae_fromscratch_model')"
python 190425_main_raw_vggae.py --model vgg --batch-size 1024 --save 190425_raw_vggae_fromscratch.pt --epochs 50 --pretrained False