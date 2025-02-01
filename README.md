# Infrastructure Maintenance

![Maintenance - System Updates](https://img.shields.io/github/actions/workflow/status/ladesa-ro/manutencao-devops/system-updates.yml?branch=main&style=for-the-badge&logo=github&label=Maintenance%20-%20System%20Updates&labelColor=%23111)
![Maintenance - Garbage Collection](https://img.shields.io/github/actions/workflow/status/ladesa-ro/manutencao-devops/system-garbage-collection.yml?branch=main&style=for-the-badge&logo=github&label=Maintenance%20-%20Garbage%20Collection&labelColor=%23111)

## System Updates

Runs at 03:30 (UTC), only on Saturday and Sunday through Tuesday. 

```bash
topgrade --yes --skip-notify
```

## Garbage Collection

Runs at 07:10 (UTC). 

- [./cluster/k8s-orphaned-replicasets.sh](./utils/cleanup/garbage-collect.sh);
- [./registry/registry-unreferenced-blobs.sh](./registry/registry-unreferenced-blobs.sh);
- [./docker/prune-containers-and-images.sh](./docker/prune-containers-and-images.sh);
- [./cluster/k3s/nodes-images-cache-prune.sh](./cluster/k3s/nodes-images-cache-prune.sh);
