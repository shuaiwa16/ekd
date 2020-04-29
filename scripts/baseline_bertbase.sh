# coding=utf-8
# Copyright 2019 The Google UDA Team Authors.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
CUDA_VISIBLE_DEVICES=2 python3.6 main.py \
  --use_tpu=False \
  --do_train=True \
  --do_eval=True \
  --raw_data_dir=data/ace/csv_raw+NT \
  --sup_train_data_dir=data/proc_data/ace/csv_raw+NT/train \
  --unsup_data_dir=data/proc_data/ace/csv_raw+NT/unsup \
  --eval_data_dir=data/proc_data/ace/csv_raw+NT/dev \
  --bert_config_file=pretrained_models/bert_base_finetune/bert_config.json \
  --vocab_file=pretrained_models/bert_base_finetune/vocab.txt \
  --init_checkpoint=pretrained_models/bert_base_finetune/bert_model.ckpt \
  --task_name=IMDB \
  --train_batch_size=8 \
  --model_dir=ckpt/baseline \
  --num_train_steps=10000 \
  --learning_rate=2e-05 \
  --num_warmup_steps=1000 \
  --unsup_ratio=0 \
  --tsa=linear_schedule \
  --aug_ops=bt-0.9 \
  --aug_copy=1 \
  --uda_coeff=0 \
  $@
