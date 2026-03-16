# Cloud Native Stack Deployment

Recipe Version: 1.0.1
Bundler Version: 0.10.15

Per-component bundle for deploying NVIDIA Cloud Native Stack components
for GPU-accelerated Kubernetes workloads.

## Configuration


**Target Environment:**

- **Service**: kubernetes
- **Intent**: mixed


## Components

The following components are included (deployed in order):

| Component | Type | Version | Namespace | Source |
|-----------|------|---------|-----------|--------|
| nemo-guardrails | Helm | 25.6.0 | build-your-own | nemo-guardrails (https://helm.ngc.nvidia.com/nvidia/nemo-microservices/charts/nemo-guardrails-25.6.0.tgz) |




## Quick Start

Run the included deployment script:

```bash
chmod +x deploy.sh
./deploy.sh
```

Use `--no-wait` to skip waiting for each component to become ready:

```bash
./deploy.sh --no-wait
```

## Manual Installation

Install components individually in order:


### nemo-guardrails

```bash
helm upgrade --install nemo-guardrails nemo-guardrails \
  --repo https://helm.ngc.nvidia.com/nvidia/nemo-microservices/charts/nemo-guardrails-25.6.0.tgz \
  --version 25.6.0 \
  -n build-your-own --create-namespace \
  -f nemo-guardrails/values.yaml \
  --wait --timeout 10m
```



## Customization

Each Helm component has its own `values.yaml` in its directory.
Edit the file before deploying to customize component configuration:

```bash
vim gpu-operator/values.yaml
```

## Upgrade

To upgrade a specific Helm component:

```bash
helm upgrade <component> <chart> --version <version> -n <namespace> -f <component>/values.yaml --wait --timeout 10m
```

## Uninstall

To remove components (reverse order):

```bash
helm uninstall nemo-guardrails -n build-your-own
```


## Troubleshooting

### Check deployment status

```bash
kubectl get pods -A | grep -E 'gpu-operator|network-operator|cert-manager'
```

### View component logs

```bash
kubectl logs -n gpu-operator -l app=gpu-operator
```

### Verify GPU access

```bash
kubectl get nodes -o jsonpath='{.items[*].status.allocatable}' | jq '.["nvidia.com/gpu"]'
```

## References

- [GPU Operator Documentation](https://docs.nvidia.com/datacenter/cloud-native/gpu-operator/latest/)
- [Network Operator Documentation](https://docs.nvidia.com/networking/display/cokan10/network+operator)
