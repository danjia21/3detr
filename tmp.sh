#!/bin/bash


# python main.py \
# --dataset_name sunrgbd \
# --nqueries 128 \
# --enc_type "masked" \
# --test_ckpt ~/tmp/sunrgbd_masked_ep1080.pth \
# --test_only \
# --dataset_root_dir data/sunrgbd/sunrgbd_pc_bbox_votes_50k_v1


python main.py \
--dataset_name scannet \
--nqueries 256 \
--enc_type "vanilla" \
--test_ckpt ~/tmp/scannet_ep1080.pth \
--test_only


# --test_plot \
# --test_plot_dir outputs/TEST/3detr


# python main.py --dataset_name <dataset_name> --nqueries <number of queries> --test_ckpt <path_to_checkpoint> --test_only [--enc_type masked]

# --test_ckpt outputs/exp_newbie/scannet_ep1080/checkpoint.pth \

# --shift_points \


# --enc_type "vanilla" `#CHANGE`\
# --test_ckpt outputs/knn_size/scannet_gha_k6_ep1080/checkpoint.pth \
#SBATCH --partition=trtx-hi
#SBATCH --cpus-per-task=4
#SBATCH --mem=16G
