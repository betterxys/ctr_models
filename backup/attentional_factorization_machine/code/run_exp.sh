# fm
python AFM.py --dataset ml-tag --epoch 20 --pretrain 1 --batch_size 4096 --hidden_factor [16,16] --keep [1.0,0.5] --lamda_attention 100.0 --lr 0.1

# original afm
# python AFM.py --dataset ml-tag --epoch 20 --pretrain 1 --batch_size 4096 --hidden_factor [16,16] --keep [1.0,0.5] --lamda_attention 100.0 --lr 0.1 --attention 1

# modified afm
# ipython AFM.py --dataset ml-tag --epoch 20 --pretrain 1 --batch_size 4096 --hidden_factor [16,16] --keep [1.0,0.5] --lamda_attention 100.0 --lr 0.1 --attention 2
