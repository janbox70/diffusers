CUDA_VISIBLE_DEVICES=0,2,3,5,6,7 accelerate launch --config_file accelerate_config.json ../examples/text_to_image/train_text_to_image_lora.py  --mixed_precision="fp16" --pretrained_model_name_or_path="/home/zhangsan/stable-diffusion/stable-diffusion-v1-5" --train_data_dir="/home/zhangsan/stable-diffusion/datasets/fengtang" --dataloader_num_workers=8 --resolution=512 --center_crop --random_flip --train_batch_size=2 --gradient_accumulation_steps=4 --max_train_steps=2000 --learning_rate=1e-04 --max_grad_norm=1 --lr_scheduler="cosine" --lr_warmup_steps=0 --output_dir="fengtang2" --checkpointing_steps=500 --caption_column=label --validation_prompt="shirt only, white" --seed=1337