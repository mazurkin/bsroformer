# bs-roformer environment

Conda environment and bootstrap scripts for [bs-roformer](https://pypi.org/project/bs-roformer-infer/)

- [https://pypi.org/project/bs-roformer-infer/](https://pypi.org/project/bs-roformer-infer/)
- [https://github.com/lucidrains/BS-RoFormer](https://github.com/lucidrains/BS-RoFormer)
- [https://huggingface.co/puar-playground/bs-roformer](https://huggingface.co/puar-playground/bs-roformer)
- [https://github.com/openmirlab/bs-roformer-infer](https://github.com/openmirlab/bs-roformer-infer)
- [https://arxiv.org/abs/2309.02612](https://arxiv.org/abs/2309.02612)

## install

```shell
# conda env + python + poetry
$ make env-create

# packages
$ make env-poetry-install
```

## run

```shell
# 1. add WAV (!) audio files to the "input" folder

# 2. run stem separation
bin/bsr.sh

# 3. check the "separated" folder after
```

## cache

demucs downloads the models to `~/.cache/torch/hub/`
