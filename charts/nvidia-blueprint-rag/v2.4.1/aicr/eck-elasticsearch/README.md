# eck-elasticsearch

Chart: oci://dp.apps.rancher.io/charts/eck-elasticsearch/eck-elasticsearch
Version: *
Namespace: nvidia-blueprint-rag

## Install

```bash
helm upgrade --install eck-elasticsearch oci://dp.apps.rancher.io/charts/eck-elasticsearch/eck-elasticsearch \
  --version * \
  -n nvidia-blueprint-rag --create-namespace \
  -f values.yaml \
  --wait --timeout 10m
```

## Upgrade

```bash
helm upgrade eck-elasticsearch oci://dp.apps.rancher.io/charts/eck-elasticsearch/eck-elasticsearch \
  --version * \
  -n nvidia-blueprint-rag \
  -f values.yaml \
  --wait --timeout 10m
```

## Uninstall

```bash
helm uninstall eck-elasticsearch -n nvidia-blueprint-rag
```
