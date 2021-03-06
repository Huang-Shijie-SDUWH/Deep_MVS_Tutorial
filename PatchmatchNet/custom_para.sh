CUSTOM_TESTING = "./datasets/dtu-test/inputs"
CHECKPOINT_FILE = "./checkpoints/params_000007.ckpt"
OUTPUT_PATH = "./datasets/dtu-test/outputs"

python eval_para.py --input_folder=$CUSTOM_TESTING --output_folder=$OUTPUT_PATH --checkpoint_path $CHECKPOINT_FILE \
   --batch_size 1 --num_views 5 --output_type both --image_max_dim 1600 --geo_mask_thres 3 --num_process 2 --photo_thres 0.8 "$@"
