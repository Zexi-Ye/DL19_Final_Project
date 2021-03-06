#!/bin/bash

#SBATCH --nodes=1
#SBATCH --gres=gpu:v100:2
#SBATCH --cpus-per-task=10
#SBATCH --mem=16GB
#SBATCH --time=48:00:00

module purge
source ~/myenv/bin/activate

python -c "print('begin_raw_vgg_encoder_features')"

python 190427_main_vgg_encoder_feature.py --model vgg --AE-file 190425_raw_vggae_fromscratch_s.pt --save 190427_vgg_fen_fromscratch.pt --epochs 50 --batch-size 512 --feature-pinning True