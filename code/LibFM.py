import os

train_file = "/opt/sensetime/ctr/code/models/attentional_factorization_machine/attentional_factorization_machine/data/frappe/frappe.train.libfm"
validation_file = "/opt/sensetime/ctr/code/models/attentional_factorization_machine/attentional_factorization_machine/data/frappe/frappe.validation.libfm"
test_file = "/opt/sensetime/ctr/code/models/attentional_factorization_machine/attentional_factorization_machine/data/frappe/frappe.test.libfm"

libfm_path = "/opt/packages/FM/libfm/bin/libFM"
task = 'r'
dim = "1,1,64"
method = "sgd"
learn_rate = 0.01
regular = "0,0,0.1"


cmd = "{0} -task {1} -train {2} -test {3} -dim '{4}' -method {5} -learn_rate {6} -regular '{7}'  ".format(
	libfm_path, task, train_file, validation_file, dim, method, learn_rate, regular)

# ./libFM -task r -train  -test  -dim '1,1,64' -method sgd -learn_rate 0.05 -regular '0, 0, 0.01'

# print(cmd)

a = os.popen(cmd).read()
print(a)