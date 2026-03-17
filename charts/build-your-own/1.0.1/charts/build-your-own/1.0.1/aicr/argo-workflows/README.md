# argo-workflows

Chart: oci://dp.apps.rancher.io/charts/argo-workflows/argo-workflows
Version: *
Namespace: build-your-own

## Install

```bash
helm upgrade --install argo-workflows oci://dp.apps.rancher.io/charts/argo-workflows/argo-workflows \
  --version * \
  -n build-your-own --create-namespace \
  -f values.yaml \
  --wait --timeout 10m
```

## Upgrade

```bash
helm upgrade argo-workflows oci://dp.apps.rancher.io/charts/argo-workflows/argo-workflows \
  --version * \
  -n build-your-own \
  -f values.yaml \
  --wait --timeout 10m
```

## Uninstall

```bash
helm uninstall argo-workflows -n build-your-own
```
