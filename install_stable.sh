pip install torch==1.13.1+cu117 torchvision==0.14.1+cu117 torchtext==0.14.1 torchaudio==0.13.1 torchdata==0.5.1 --extra-index-url https://download.pytorch.org/whl/cu117
if [ $3 == True ]; then
  pip install -U openmim
  mim install mmcv-full -f https://download.openmmlab.com/mmcv/dist/cu117/torch1.13/index.html
  pip install mmdet==2.28.2
fi

git clone -b stable1 https://github.com/neuralninja22/sd-webui /content/$1
if [ $2 == True ]; then
  git clone -b stable1 https://github.com/ninjaneural/controlnet /content/$1/extensions/controlnet
fi
if [ $3 == True ]; then
  git clone https://github.com/ninjaneural/ddetailer /content/$1/extensions/ddetailer
fi
if [ $4 == True ]; then
  git clone https://github.com/Bing-su/adetailer /content/$1/extensions/adetailer
fi
if [ $5 == True ]; then
  git clone https://github.com/ninjaneural/segment-anything /content/$1/extensions/segment-anything
fi

git clone https://github.com/adieyal/sd-dynamic-prompts /content/$1/extensions/sd-dynamic-prompts
git clone https://github.com/mcmonkeyprojects/sd-dynamic-thresholding /content/$1/extensions/sd-dynamic-thresholding
git clone clone -b 2.0.0 https://github.com/DominikDoom/a1111-sd-webui-tagcomplete /content/$1/extensions/a1111-sd-webui-tagcomplete
git clone https://github.com/Coyote-A/ultimate-upscale-for-automatic1111 /content/$1/extensions/ultimate-upscale-for-automatic1111
git clone https://github.com/pkuliyi2015/multidiffusion-upscaler-for-automatic1111 /content/$1/extensions/multidiffusion-upscaler-for-automatic1111

git clone -b stable1 https://github.com/neuralninja22/images-browser /content/$1/extensions/images-browser
git clone -b stable https://github.com/ninjaneural/additional-networks /content/$1/extensions/additional-networks
git clone https://github.com/neuralninja22/wd14-tagger /content/$1/extensions/wd14-tagger
git clone https://github.com/ninjaneural/photopea-embed /content/$1/extensions/photopea-embed
git clone https://github.com/ninjaneural/video-util /content/$1/extensions/video-util

git clone https://github.com/fkunn1326/openpose-editor /content/$1/extensions/openpose-editor
git clone https://github.com/hnmr293/posex /content/$1/extensions/posex
git clone https://github.com/fishslot/video_loopback_for_webui /content/$1/extensions/video_loopback_for_webui
git clone https://github.com/ninjaneural/mov2mov /content/$1/extensions/mov2mov
git clone https://github.com/ninjaneural/depth-lib /content/$1/extensions/depth-lib

git clone https://github.com/36DB/stable-diffusion-webui-localization-ko_KR

if [ $2 == True ]; then
  aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11p_sd15_openpose_fp16.safetensors -d /content/$1/extensions/controlnet/models -o control_v11p_sd15_openpose_fp16.safetensors
  aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11p_sd15_lineart_fp16.safetensors -d /content/$1/extensions/controlnet/models -o control_v11p_sd15_lineart_fp16.safetensors
  aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11p_sd15_softedge_fp16.safetensors -d /content/$1/extensions/controlnet/models -o control_v11p_sd15_softedge_fp16.safetensors
  aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11f1p_sd15_depth_fp16.safetensors -d /content/$1/extensions/controlnet/models -o control_v11f1p_sd15_depth_fp16.safetensors
  aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11p_sd15_canny_fp16.safetensors -d /content/$1/extensions/controlnet/models -o control_v11p_sd15_canny_fp16.safetensors
  aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11p_sd15_seg_fp16.safetensors -d /content/$1/extensions/controlnet/models -o control_v11p_sd15_seg_fp16.safetensors
  aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11p_sd15s2_lineart_anime_fp16.safetensors -d /content/$1/extensions/controlnet/models -o control_v11p_sd15s2_lineart_anime_fp16.safetensors

  aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11p_sd15_mlsd_fp16.safetensors -d /content/$1/extensions/controlnet/models -o control_v11p_sd15_mlsd_fp16.safetensors
  aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11p_sd15_normalbae_fp16.safetensors -d /content/$1/extensions/controlnet/models -o control_v11p_sd15_normalbae_fp16.safetensors
  aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11p_sd15_inpaint_fp16.safetensors -d /content/$1/extensions/controlnet/models -o control_v11p_sd15_inpaint_fp16.safetensors
  aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11e_sd15_ip2p_fp16.safetensors -d /content/$1/extensions/controlnet/models -o control_v11e_sd15_ip2p_fp16.safetensors
  aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11e_sd15_shuffle_fp16.safetensors -d /content/$1/extensions/controlnet/models -o control_v11e_sd15_shuffle_fp16.safetensors
  aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11f1e_sd15_tile_fp16.safetensors -d /content/$1/extensions/controlnet/models -o control_v11f1e_sd15_tile_fp16.safetensors
  aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11p_sd15_scribble_fp16.safetensors -d /content/$1/extensions/controlnet/models -o control_v11p_sd15_scribble_fp16.safetensors

  aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/CiaraRowles/TemporalNet/resolve/main/diff_control_sd15_temporalnet_fp16.safetensors -d /content/$1/extensions/controlnet/models -o diff_control_sd15_temporalnet_fp16.safetensors

  aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/TencentARC/T2I-Adapter/resolve/main/models/t2iadapter_style_sd14v1.pth -d /content/$1/extensions/controlnet/models -o t2iadapter_style_sd14v1.pth
  aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/TencentARC/T2I-Adapter/resolve/main/models/t2iadapter_color_sd14v1.pth -d /content/$1/extensions/controlnet/models -o t2iadapter_color_sd14v1.pth
  aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/TencentARC/T2I-Adapter/resolve/main/models/t2iadapter_sketch_sd15v2.pth -d /content/$1/extensions/controlnet/models -o t2iadapter_sketch_sd15v2.pth
  aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/TencentARC/T2I-Adapter/resolve/main/models/t2iadapter_zoedepth_sd15v1.pth -d /content/$1/extensions/controlnet/models -o t2iadapter_zoedepth_sd15v1.pth
fi

if [ $5 == True ]; then
  mkdir /content/$1/models/sam
  aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://dl.fbaipublicfiles.com/segment_anything/sam_vit_h_4b8939.pth -d /content/$1/models/sam -o sam_vit_h_4b8939.pth
fi

sed -i -e "/    prepare_environment()/a\    os.system\(f\\\"\"\"sed -i -e \"s/dict()))/dict())).cuda()/g\" /content/$1/repositories/stable-diffusion-stability-ai/ldm/util.py\"\"\")" /content/$1/launch.py
wget https://raw.githubusercontent.com/ninjaneural/webui/master/misc/config.json -O /content/$1/config.json
