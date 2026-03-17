# nemo-guardrails

Chart: https://helm.ngc.nvidia.com/nvidia/nemo-microservices/charts/nemo-guardrails-25.6.0.tgz/nemo-guardrails
Version: 25.6.0
Namespace: build-your-own

## Install

```bash
helm upgrade --install nemo-guardrails nemo-guardrails \
  --repo https://helm.ngc.nvidia.com/nvidia/nemo-microservices/charts/nemo-guardrails-25.6.0.tgz \
  --version 25.6.0 \
  -n build-your-own --create-namespace \
  -f values.yaml \
  --wait --timeout 10m
```

## Upgrade

```bash
helm upgrade nemo-guardrails nemo-guardrails \
  --repo https://helm.ngc.nvidia.com/nvidia/nemo-microservices/charts/nemo-guardrails-25.6.0.tgz \
  --version 25.6.0 \
  -n build-your-own \
  -f values.yaml \
  --wait --timeout 10m
```

## Uninstall

```bash
helm uninstall nemo-guardrails -n build-your-own
```
