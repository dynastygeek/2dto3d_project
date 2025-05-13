docker run \
  --gpus all \
  -v "$(pwd)/shared_model:/workspace/shared" \
  -v "$(pwd):/workspace/text2mesh" \
  -w /workspace/text2mesh \
  -it text2mesh \
  bash -c "source /opt/conda/etc/profile.d/conda.sh && \
           conda activate text2mesh && \
           CUDA_VISIBLE_DEVICES='' python3.12 main.py \
             --run branch \
             --obj_path /workspace/shared/0/mesh1.obj \
             --output_dir /workspace/shared/output \
             --prompt 'change the colour to red' \
             --sigma 5.0 --geoloss --clamp tanh --n_normaugs 4 --n_augs 1 \
             --normmincrop 0.1 --normmaxcrop 0.1 --colordepth 2 --normdepth 2 \
             --frontview --frontview_std 4 --clipavg view --lr_decay 0.9 \
             --normclamp tanh --maxcrop 1.0 --save_render \
             --seed 48240889 --n_iter 500 --frontview_center 5.4 0.4"

                                                             
#!/bin/bash

# CUDA_VISIBLE_DEVICES='' python3.12 /workspace/text2mesh/main.py \
#   --run branch \
#   --obj_path /workspace/shared/0/mesh1.obj \
#   --output_dir /workspace/shared/output \
#   --prompt 'change the colour to red' \
#   --sigma 5.0 --geoloss --clamp tanh --n_normaugs 4 --n_augs 1 \
#   --normmincrop 0.1 --normmaxcrop 0.1 --colordepth 2 --normdepth 2 \
#   --frontview --frontview_std 4 --clipavg view --lr_decay 0.9 \
#   --normclamp tanh --maxcrop 1.0 --save_render \
#   --seed 48240889 --n_iter 500 --frontview_center 5.4 0.4



                                            