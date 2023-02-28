python -m torch.distributed.launch --nproc_per_node=8 examples/imageclassification/imagenet/dat/main.py \
--data_dir=/mnt/mydata/dataset/imagenet/imagenet/raw-data \
--test_data=/mnt/default/projects/robustkd/evaluation \
--model=resnet50 \
--teacher=clip_vit_large_patch14_224 \
--workers=2 \
--epochs=180 \
--batch-size=64 \
--lr=0.001 \
--drop-path=0.25 \
--model-ema \
--model-ema-decay=0.99992 \
--opt=adamw \
--opt-eps=1e-8 \
--weight-decay=0.05 \
--sched=cosine \
--warmup-lr=1e-6 \
--warmup-epochs=0 \
--cooldown-epochs=10 \
--patience-epochs=10 \
--color-jitter=0.4 \
--aa=rand-m9-mstd0.5-inc1 \
--smoothing=0.1 \
--reprob=0.25 \
--mixup=0.8 \
--cutmix=1.0 \
--pin-mem \
--clip-grad=0.9 \
--mean 0.0 0.0 0.0 \
--std 1.0 1.0 1.0 \
--distill_from_teacher=True \
--teacher_path=/mnt/default/projects/robustkd/amlt-code/dc8ac100-34d6-475a-a2f3-fb8eded82a79/examples/imageclassification/imagenet/dat/FTCLIP.pt \
--mode=ardwd \
--output=/mnt/default/projects/robustkd/experiments/clipresnet \
--experiment=invarkd