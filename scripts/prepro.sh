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
#!/bin/bash
bert_vocab_file=pretrained_models/bert_base/vocab.txt


# Preprocess supervised training set
python3.6 preprocess.py \
  --raw_data_dir=data/ace/csv_NT \
  --output_base_dir=data/proc_data/ace/csv_NT/train \
  --data_type=sup \
  --sub_set=train \
  --vocab_file=$bert_vocab_file \
  $@
'''
# Preprocess test set
python3.6 preprocess.py \
  --raw_data_dir=data/ace/csv_raw+NT \
  --output_base_dir=data/proc_data/ace/csv_raw+NT/dev \
  --data_type=sup \
  --sub_set=dev \
  --vocab_file=$bert_vocab_file \
  $@

# Preprocess unlabeled set
python3.6 preprocess.py \
  --raw_data_dir=data/ace/csv_unsup \
  --output_base_dir=data/proc_data/ace/csv_raw+NT/unsup_alone \
  --data_type=unsup \
  --sub_set=unsup_ext \
  --vocab_file=$bert_vocab_file \
  $@
'''
