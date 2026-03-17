# argo-workflows

Chart: oci://dp.apps.rancher.io/charts/argo-workflows/argo-workflows
Version: *
Namespace: myrecipe

## Install

```bash
helm upgrade --install argo-workflows oci://dp.apps.rancher.io/charts/argo-workflows/argo-workflows \
  --version * \
  -n myrecipe --create-namespace \
  -f values.yaml \
  --wait --timeout 10m
```

## Upgrade

```bash
helm upgrade argo-workflows oci://dp.apps.rancher.io/charts/argo-workflows/argo-workflows \
  --version * \
  -n myrecipe \
  -f values.yaml \
  --wait --timeout 10m
```

## Uninstall

```bash
helm uninstall argo-workflows -n myrecipe
```
