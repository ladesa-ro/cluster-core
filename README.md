# Infrastructure Maintenance

![Maintenance - System Updates](https://img.shields.io/github/actions/workflow/status/ladesa-ro/manutencao-devops/system-updates.yml?branch=main&style=for-the-badge&logo=github&label=Maintenance%20-%20System%20Updates&labelColor=%23111)
![Maintenance - Garbage Collection](https://img.shields.io/github/actions/workflow/status/ladesa-ro/manutencao-devops/system-garbage-collection.yml?branch=main&style=for-the-badge&logo=github&label=Maintenance%20-%20Garbage%20Collection&labelColor=%23111)

## System Updates

Runs at 03:30 (UTC), only on Saturday and Sunday through Tuesday. 

```bash
topgrade --yes --skip-notify
```

Related

- [topgrade](https://github.com/topgrade-rs/topgrade#readme)

## Garbage Collection

Runs at 07:10 (UTC). 

- [./utils/cleanup/cluster/k8s-orphaned-replicasets.sh](./utils/cleanup/cluster/k8s-orphaned-replicasets.sh);
- [./utils/cleanup/registry/registry-unreferenced-blobs.sh](./utils/cleanup/registry/registry-unreferenced-blobs.sh);
- [./utils/cleanup/docker/prune-containers-and-images.sh](./utils/cleanup/docker/prune-containers-and-images.sh);
- [./utils/cleanup/cluster/k3s/nodes-images-cache-prune.sh](./utils/cleanup/cluster/k3s/nodes-images-cache-prune.sh);

Related

- [kubectl](https://kubernetes.io/docs/reference/kubectl/)
- [distribution registry - garbage collection](https://distribution.github.io/distribution/about/garbage-collection/)
- [docker prune](https://docs.docker.com/reference/cli/docker/system/prune/)
- [k3s crictl](https://github.com/kubernetes-sigs/cri-tools/blob/master/docs/crictl.md#usage)

---

2024 – present, Ladesa.
