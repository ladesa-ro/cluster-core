# Infrastructure Maintenance

[![Maintenance - System Updates](https://img.shields.io/github/actions/workflow/status/ladesa-ro/manutencao-devops/system-updates.yml?branch=main&style=for-the-badge&logo=github&label=Maintenance%20-%20System%20Updates&labelColor=%23111)](.github/workflows/system-updates.yml)
[![Maintenance - Garbage Collection](https://img.shields.io/github/actions/workflow/status/ladesa-ro/manutencao-devops/system-garbage-collection.yml?branch=main&style=for-the-badge&logo=github&label=Maintenance%20-%20Garbage%20Collection&labelColor=%23111)](.github/workflows/system-garbage-collection.yml)

## System Updates

Workflow: [.github/workflows/system-updates.yml](.github/workflows/system-updates.yml)

> Runs at 03:30 (UTC), only on Saturday and Sunday through Tuesday. 

Scripts

[./utils/system-updates/update-system.sh](./utils/system-updates/update-system.sh)  

See also

- [topgrade](https://github.com/topgrade-rs/topgrade#readme)

## Garbage Collection

Workflow: [.github/workflows/system-garbage-collection.yml](.github/workflows/system-garbage-collection.yml)

> Runs at 07:10 (UTC). 

Scripts

[./utils/cleanup/garbage-collect.sh](./utils/cleanup/garbage-collect.sh)  
- [./utils/cleanup/cluster/k8s-orphaned-replicasets.sh](./utils/cleanup/cluster/k8s-orphaned-replicasets.sh);
- [./utils/cleanup/registry/registry-unreferenced-blobs.sh](./utils/cleanup/registry/registry-unreferenced-blobs.sh);
- [./utils/cleanup/docker/prune-containers-and-images.sh](./utils/cleanup/docker/prune-containers-and-images.sh);
- [./utils/cleanup/cluster/k3s/nodes-images-cache-prune.sh](./utils/cleanup/cluster/k3s/nodes-images-cache-prune.sh);

See also

- [kubectl](https://kubernetes.io/docs/reference/kubectl/)
- [distribution registry - garbage collection](https://distribution.github.io/distribution/about/garbage-collection/)
- [docker prune](https://docs.docker.com/reference/cli/docker/system/prune/)
- [k3s crictl](https://github.com/kubernetes-sigs/cri-tools/blob/master/docs/crictl.md#usage)

---

2024 – present, Ladesa.
