#!/usr/bin/env sh

now=$(date +"%Y%m%d_%H%M%S")

nohup python ./deepAFM.py --dataset frappe --hidden_factor [64,128] --attention 1 --batch_size 128 --lr 0.05 --optimizer AdagradOptimizer  --batch_norm 1 --epoch 100 >../log/DAFM_1.log 2>&1
nohup python ./deepAFM.py --dataset frappe --hidden_factor [64,128] --attention 2 --batch_size 128 --lr 0.05 --optimizer AdagradOptimizer  --batch_norm 1 --epoch 100 >../log/DAFM_2.log 2>&1



# #!/bin/bash
# for k in 0.05 0.001
# do
#     nohup python ./deepAFM.py --dataset frappe --hidden_factor [64,128] --attention 1 --batch_size 128 --lr $k --optimizer AdagradOptimizer  --batch_norm 1 --epoch 100 >../log/DAFM_1_lr_$k.log 2>&1
#     nohup python ./deepAFM.py --dataset frappe --hidden_factor [64,128] --attention 1 --batch_size 128 --lr $k --optimizer AdagradOptimizer  --batch_norm 1 --epoch 100 >../log/DAFM_2_lr_$k.log 2>&1
#     # nohup python ./AFM.py --dataset frappe --hidden_factor [64,128] --attention 1 --batch_size 128 --lr $k --optimizer AdagradOptimizer  --batch_norm 1 --epoch 100 >../log/at_1_lr_$k.log 2>&1
#     # nohup python ./AFM.py --dataset frappe --hidden_factor [64,128] --attention 2 --batch_size 128 --lr $k --optimizer AdagradOptimizer  --batch_norm 1 --epoch 100 >../log/at_2_lr_$k.log 2>&1
#     # nohup python ./NeuralFM.py --dataset frappe --hidden_factor 128 --batch_size 128 --lr $k --optimizer AdagradOptimizer  --batch_norm 1 --epoch 100 >../log/NFM_lr_$k.log 2>&1
#     # nohup python ./FM.py --dataset frappe  --lr $k  --epoch 100 >../log/FM_lr_$k.log 2>&1

# done