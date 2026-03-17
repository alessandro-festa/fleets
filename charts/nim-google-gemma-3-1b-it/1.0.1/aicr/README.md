# Cloud Native Stack Deployment

Recipe Version: 1.0.1
Bundler Version: 0.10.15

Per-component bundle for deploying NVIDIA Cloud Native Stack components
for GPU-accelerated Kubernetes workloads.

## Configuration


**Target Environment:**

- **Service**: self-managed
- **Accelerator**: h100
- **Intent**: inference
- **OS**: rhel


## Components

The following components are included (deployed in order):

| Component | Type | Version | Namespace | Source |
|-----------|------|---------|-----------|--------|
| gemma-3-1b-it | Helm | * | nim-google-gemma-3-1b-it | gemma-3-1b-it (https://helm.ngc.nvidia.com/nim/charts/nim-llm-1.15.5.tgz) |




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


### gemma-3-1b-it

```bash
helm upgrade --install gemma-3-1b-it gemma-3-1b-it \
  --repo https://helm.ngc.nvidia.com/nim/charts/nim-llm-1.15.5.tgz \
  --version * \
  -n nim-google-gemma-3-1b-it --create-namespace \
  -f gemma-3-1b-it/values.yaml \
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
helm uninstall gemma-3-1b-it -n nim-google-gemma-3-1b-it
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
