# Cloud Native Stack Deployment

Recipe Version: v2.5.1
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
| main | Helm | v2.5.0 | nvidia-blueprint-rag | main (https://github.com/NVIDIA-AI-Blueprints/rag) |
| nv-ingest | Helm | * | nvidia-blueprint-rag | nv-ingest (oci://dp.apps.rancher.io/charts/nv-ingest) |
| eck-elasticsearch | Helm | * | nvidia-blueprint-rag | eck-elasticsearch (oci://dp.apps.rancher.io/charts/eck-elasticsearch) |
| zipkin | Helm | * | nvidia-blueprint-rag | zipkin (oci://dp.apps.rancher.io/charts/zipkin) |
| opentelemetry-collector | Helm | * | nvidia-blueprint-rag | opentelemetry-collector (oci://dp.apps.rancher.io/charts/opentelemetry-collector) |
| kube-prometheus-stack | Helm | * | nvidia-blueprint-rag | kube-prometheus-stack (oci://dp.apps.rancher.io/charts/kube-prometheus-stack) |




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


### main

```bash
helm upgrade --install main main \
  --repo https://github.com/NVIDIA-AI-Blueprints/rag \
  --version v2.5.0 \
  -n nvidia-blueprint-rag --create-namespace \
  -f main/values.yaml \
  --wait --timeout 10m
```


### nv-ingest

```bash
helm upgrade --install nv-ingest oci://dp.apps.rancher.io/charts/nv-ingest/nv-ingest \
  --version * \
  -n nvidia-blueprint-rag --create-namespace \
  -f nv-ingest/values.yaml \
  --wait --timeout 10m
```


### eck-elasticsearch

```bash
helm upgrade --install eck-elasticsearch oci://dp.apps.rancher.io/charts/eck-elasticsearch/eck-elasticsearch \
  --version * \
  -n nvidia-blueprint-rag --create-namespace \
  -f eck-elasticsearch/values.yaml \
  --wait --timeout 10m
```


### zipkin

```bash
helm upgrade --install zipkin oci://dp.apps.rancher.io/charts/zipkin/zipkin \
  --version * \
  -n nvidia-blueprint-rag --create-namespace \
  -f zipkin/values.yaml \
  --wait --timeout 10m
```


### opentelemetry-collector

```bash
helm upgrade --install opentelemetry-collector oci://dp.apps.rancher.io/charts/opentelemetry-collector/opentelemetry-collector \
  --version * \
  -n nvidia-blueprint-rag --create-namespace \
  -f opentelemetry-collector/values.yaml \
  --wait --timeout 10m
```


### kube-prometheus-stack

```bash
helm upgrade --install kube-prometheus-stack oci://dp.apps.rancher.io/charts/kube-prometheus-stack/kube-prometheus-stack \
  --version * \
  -n nvidia-blueprint-rag --create-namespace \
  -f kube-prometheus-stack/values.yaml \
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
helm uninstall kube-prometheus-stack -n nvidia-blueprint-rag
```
```bash
helm uninstall opentelemetry-collector -n nvidia-blueprint-rag
```
```bash
helm uninstall zipkin -n nvidia-blueprint-rag
```
```bash
helm uninstall eck-elasticsearch -n nvidia-blueprint-rag
```
```bash
helm uninstall nv-ingest -n nvidia-blueprint-rag
```
```bash
helm uninstall main -n nvidia-blueprint-rag
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
