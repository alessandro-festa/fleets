# gemma-3-1b-it

Chart: https://helm.ngc.nvidia.com/nim/charts/nim-llm-1.15.5.tgz/gemma-3-1b-it
Version: *
Namespace: nim-google-gemma-3-1b-it

## Install

```bash
helm upgrade --install gemma-3-1b-it gemma-3-1b-it \
  --repo https://helm.ngc.nvidia.com/nim/charts/nim-llm-1.15.5.tgz \
  --version * \
  -n nim-google-gemma-3-1b-it --create-namespace \
  -f values.yaml \
  --wait --timeout 10m
```

## Upgrade

```bash
helm upgrade gemma-3-1b-it gemma-3-1b-it \
  --repo https://helm.ngc.nvidia.com/nim/charts/nim-llm-1.15.5.tgz \
  --version * \
  -n nim-google-gemma-3-1b-it \
  -f values.yaml \
  --wait --timeout 10m
```

## Uninstall

```bash
helm uninstall gemma-3-1b-it -n nim-google-gemma-3-1b-it
```
