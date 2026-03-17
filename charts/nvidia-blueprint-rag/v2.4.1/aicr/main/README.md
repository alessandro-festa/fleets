# main

Chart: https://github.com/NVIDIA-AI-Blueprints/rag/main
Version: v2.4.0
Namespace: nvidia-blueprint-rag

## Install

```bash
helm upgrade --install main main \
  --repo https://github.com/NVIDIA-AI-Blueprints/rag \
  --version v2.4.0 \
  -n nvidia-blueprint-rag --create-namespace \
  -f values.yaml \
  --wait --timeout 10m
```

## Upgrade

```bash
helm upgrade main main \
  --repo https://github.com/NVIDIA-AI-Blueprints/rag \
  --version v2.4.0 \
  -n nvidia-blueprint-rag \
  -f values.yaml \
  --wait --timeout 10m
```

## Uninstall

```bash
helm uninstall main -n nvidia-blueprint-rag
```
