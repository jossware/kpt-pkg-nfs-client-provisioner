# kpt-pkg-nfs-client-provisioner

- [Source](https://github.com/kubernetes-retired/external-storage/tree/master/nfs-client)
- [Chart](https://github.com/bitnami/charts/tree/master/bitnami/external-dns)
- [Chart Source](https://github.com/helm/charts/tree/master/stable/nfs-client-provisioner)

Generated by [konvert](https://github.com/kumorilabs/konvert).

## Requirements

- [helm](https://helm.sh/)
- [kpt](https://googlecontainertools.github.io/kpt/)
- [konvert](https://github.com/kumorilabs/konvert)

## Update Base

### Add Helm Repository

```shell
helm repo add bitnami https://charts.bitnami.com/bitnami
helm repo add stable https://kubernetes-charts.storage.googleapis.com
helm repo update
```

### Update to Desired Version

Update the chart version numbers in the following files:

- Makefile
- konvert.yaml

### Update default values (optional)

Use this for reference purposes when building konvert.yaml.

```shell
make default_values
```

### Build the base

Clean up workspace and run `konvert`.

```shell
make konvert # or just make
```