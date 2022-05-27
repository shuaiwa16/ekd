# Introduction

source code of paper Improving Event Detection via Open-domain Trigger Knowledge.

We propose a novel Enrichment Knowledge Distillation (EKD) model to leverage external open-domain trigger knowledge to reduce the in-built biases to frequent trigger words in annotations.

Our academic paper which describes EKD in detail can be found here: https://tongmeihan1995.github.io/meihan.github.io/research/ACL2020.pdf.


# How do I run the code?
```
python preprocess.py
python main.py
```

# How do I cite?
```
@inproceedings{tong-etal-2020-improving,
    title = "Improving Event Detection via Open-domain Trigger Knowledge",
    author = "Tong, Meihan  and
      Xu, Bin  and
      Wang, Shuai  and
      Cao, Yixin  and
      Hou, Lei  and
      Li, Juanzi  and
      Xie, Jun",
    booktitle = "Proceedings of the 58th Annual Meeting of the Association for Computational Linguistics",
    month = jul,
    year = "2020",
    address = "Online",
    publisher = "Association for Computational Linguistics",
    url = "https://aclanthology.org/2020.acl-main.522",
    doi = "10.18653/v1/2020.acl-main.522",
    pages = "5887--5897",
    abstract = "Event Detection (ED) is a fundamental task in automatically structuring texts. Due to the small scale of training data, previous methods perform poorly on unseen/sparsely labeled trigger words and are prone to overfitting densely labeled trigger words. To address the issue, we propose a novel Enrichment Knowledge Distillation (EKD) model to leverage external open-domain trigger knowledge to reduce the in-built biases to frequent trigger words in annotations. Experiments on benchmark ACE2005 show that our model outperforms nine strong baselines, is especially effective for unseen/sparsely labeled trigger words. The source code is released on https://github.com/shuaiwa16/ekd.git.",
}

```
