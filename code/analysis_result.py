import pandas as pd
import matplotlib
matplotlib.use('agg')
import matplotlib.pyplot as plt
import os
import re



class Ana_rst():

    def __init__(self):
        pass



    def parse_file(self, fp):
        """parse log text to pandas DataFrame with col's name:[train, validation, test]"""
        with open(fp, 'r') as f:
            cont = f.read()
            model_name = cont.find(r'^(\w+)')
            data = re.findall(r"train=([\d\.]+), validation=([\d\.]+), test=([\d\.]+)", cont)
            data = pd.DataFrame(data, columns=['train', 'validation', 'test'])
            for i in data.columns:
                data[i] = pd.to_numeric(data[i])
        return data



if __name__ == '__main__':
    base_dir = '/opt/sensetime/ctr/code/models/models'
    log_dir = os.path.join(base_dir, 'log')
    ana = Ana_rst()
    file_lists = [os.path.join(log_dir, i) for i in os.listdir(log_dir) if i.endswith('_.log')]

    for fp in file_lists:
        data = ana.parse_file(fp)
        print(fp, data.shape)
