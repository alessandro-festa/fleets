# nv-ingest

Chart: oci://dp.apps.rancher.io/charts/nv-ingest/nv-ingest
Version: *
Namespace: nvidia-blueprint-rag

## Install

```bash
helm upgrade --install nv-ingest oci://dp.apps.rancher.io/charts/nv-ingest/nv-ingest \
  --version * \
  -n nvidia-blueprint-rag --create-namespace \
  -f values.yaml \
  --wait --timeout 10m
```

## Upgrade

```bash
helm upgrade nv-ingest oci://dp.apps.rancher.io/charts/nv-ingest/nv-ingest \
  --version * \
  -n nvidia-blueprint-rag \
  -f values.yaml \
  --wait --timeout 10m
```

## Uninstall

```bash
helm uninstall nv-ingest -n nvidia-blueprint-rag
```
