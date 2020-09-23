CHART_VERSION = 1.2.9

.PHONY: all
all: build

.PHONY: clean
clean:
	rm -rf base namespace.yaml

.PHONY: build
build: clean
	konvert
	kpt fn run .
	# kpt mangles the values.yaml so run redownload it
	helm show values stable/nfs-client-provisioner --version ${CHART_VERSION} > values.yaml

.PHONY: default_values
default_values:
	helm show values stable/nfs-client-provisioner --version ${CHART_VERSION} > values.yaml
