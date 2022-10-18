local:
	python train.py --config_file local.yml

train:
	rm -rf logs/logs.txt
	rm -rf logs/stdout.txt
	qsub train.sh

activate:
	source env/bin/activate

pre:
	qsub preprocess.sh