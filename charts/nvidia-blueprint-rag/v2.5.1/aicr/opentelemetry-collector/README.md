# opentelemetry-collector

Chart: oci://dp.apps.rancher.io/charts/opentelemetry-collector/opentelemetry-collector
Version: *
Namespace: nvidia-blueprint-rag

## Install

```bash
helm upgrade --install opentelemetry-collector oci://dp.apps.rancher.io/charts/opentelemetry-collector/opentelemetry-collector \
  --version * \
  -n nvidia-blueprint-rag --create-namespace \
  -f values.yaml \
  --wait --timeout 10m
```

## Upgrade

```bash
helm upgrade opentelemetry-collector oci://dp.apps.rancher.io/charts/opentelemetry-collector/opentelemetry-collector \
  --version * \
  -n nvidia-blueprint-rag \
  -f values.yaml \
  --wait --timeout 10m
```

## Uninstall

```bash
helm uninstall opentelemetry-collector -n nvidia-blueprint-rag
```
