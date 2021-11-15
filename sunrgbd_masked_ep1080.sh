#!/bin/bash
#SBATCH --job-name=sun_ori
#SBATCH --output=/home/jia/slurm_logs/%j.out
#SBATCH --mail-type=END,FAIL
#SBATCH --mail-user=danjia.notify@gmail.com
#SBATCH --cpus-per-task=16
#SBATCH --mem=16G
#SBATCH --gres=gpu:1
#SBATCH --time=8-00:00:00
#SBATCH --signal=TERM@120
#SBATCH --partition=a40-deadline
#SBATCH --qos=deadline_qos


python main.py \
--dataset_name sunrgbd \
--max_epoch 1080 \
--enc_type masked \
--nqueries 128 \
--base_lr 7e-4 \
--matcher_giou_cost 3 \
--matcher_cls_cost 1 \
--matcher_center_cost 5 \
--matcher_objectness_cost 5 \
--loss_giou_weight 0 \
--loss_sem_cls_weight 0.8 \
--loss_no_object_weight 0.1 \
--save_separate_checkpoint_every_epoch -1 \
--checkpoint_dir outputs/learnable/sunrgbd_3detr_masked_ep1080 \
`#CHANGE`--dataset_num_workers 8 \
`#CHANGE`--batchsize_per_gpu 8
