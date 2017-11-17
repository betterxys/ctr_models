#!/usr/bin/env sh

now=$(date +"%Y%m%d_%H%M%S")


nohup python ./deepAFM.py  --loss_type log_loss --dataset frappe --hidden_factor [64,128] --attention 1 --batch_size 128 --lr 0.05 --optimizer AdagradOptimizer  --batch_norm 1 --epoch 100 >../log/DAFM_1_$now.log 2>&1
nohup python ./deepAFM.py  --loss_type log_loss --dataset frappe --hidden_factor [64,128] --attention 2 --batch_size 128 --lr 0.05 --optimizer AdagradOptimizer  --batch_norm 1 --epoch 100 >../log/DAFM_2_$now.log 2>&1
nohup python ./AFM.py      --loss_type log_loss --dataset frappe --hidden_factor [64,128] --attention 1 --batch_size 128 --lr 0.05 --optimizer AdagradOptimizer  --batch_norm 1 --epoch 100 >../log/AFM_1_$now.log 2>&1
nohup python ./AFM.py      --loss_type log_loss --dataset frappe --hidden_factor [64,128] --attention 2 --batch_size 128 --lr 0.05 --optimizer AdagradOptimizer  --batch_norm 1 --epoch 100 >../log/AFM_2_$now.log 2>&1
nohup python ./NeuralFM.py --loss_type log_loss --dataset frappe --hidden_factor 128                    --batch_size 128 --lr 0.05 --optimizer AdagradOptimizer  --batch_norm 1 --epoch 100 >../log/NFM_$now.log 2>&1
nohup python ./FM.py       --loss_type log_loss --dataset frappe                                                         --lr 0.05                                              --epoch 100 >../log/FM_$now.log 2>&1