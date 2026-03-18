# zipkin

Chart: oci://dp.apps.rancher.io/charts/zipkin/zipkin
Version: *
Namespace: nvidia-blueprint-rag

## Install

```bash
helm upgrade --install zipkin oci://dp.apps.rancher.io/charts/zipkin/zipkin \
  --version * \
  -n nvidia-blueprint-rag --create-namespace \
  -f values.yaml \
  --wait --timeout 10m
```

## Upgrade

```bash
helm upgrade zipkin oci://dp.apps.rancher.io/charts/zipkin/zipkin \
  --version * \
  -n nvidia-blueprint-rag \
  -f values.yaml \
  --wait --timeout 10m
```

## Uninstall

```bash
helm uninstall zipkin -n nvidia-blueprint-rag
```
