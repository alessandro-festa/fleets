# vllm

Chart: oci://dp.apps.rancher.io/charts/vllm/vllm
Version: *
Namespace: myrecipe

## Install

```bash
helm upgrade --install vllm oci://dp.apps.rancher.io/charts/vllm/vllm \
  --version * \
  -n myrecipe --create-namespace \
  -f values.yaml \
  --wait --timeout 10m
```

## Upgrade

```bash
helm upgrade vllm oci://dp.apps.rancher.io/charts/vllm/vllm \
  --version * \
  -n myrecipe \
  -f values.yaml \
  --wait --timeout 10m
```

## Uninstall

```bash
helm uninstall vllm -n myrecipe
```
