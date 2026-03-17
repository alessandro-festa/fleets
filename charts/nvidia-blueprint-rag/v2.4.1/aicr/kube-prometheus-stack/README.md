# kube-prometheus-stack

Chart: oci://dp.apps.rancher.io/charts/kube-prometheus-stack/kube-prometheus-stack
Version: *
Namespace: nvidia-blueprint-rag

## Install

```bash
helm upgrade --install kube-prometheus-stack oci://dp.apps.rancher.io/charts/kube-prometheus-stack/kube-prometheus-stack \
  --version * \
  -n nvidia-blueprint-rag --create-namespace \
  -f values.yaml \
  --wait --timeout 10m
```

## Upgrade

```bash
helm upgrade kube-prometheus-stack oci://dp.apps.rancher.io/charts/kube-prometheus-stack/kube-prometheus-stack \
  --version * \
  -n nvidia-blueprint-rag \
  -f values.yaml \
  --wait --timeout 10m
```

## Uninstall

```bash
helm uninstall kube-prometheus-stack -n nvidia-blueprint-rag
```
