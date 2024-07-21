Certainly! Here’s a more detailed description for your `create-cluster.sh` script:

```markdown
# create-cluster.sh

**Author:** Jean Castro

## Description

The `create-cluster.sh` script is designed to automate the process of creating a Kubernetes cluster using Kind (Kubernetes in Docker). This script simplifies the setup of a Kubernetes environment for development and testing purposes. 

### Features

- **Kubernetes Cluster Creation:** Efficiently sets up a Kubernetes cluster with Kind.
- **Flexible Configuration:** Provides options to include or exclude additional components like Ingress controllers and MetalLB (a load-balancer implementation).
- **Customizable Cluster Naming:** Allows you to specify a custom name for the cluster to distinguish it from other environments.

### Usage

Run the script with various options to customize the cluster setup:

```bash
$ ./create-cluster.sh --no-ingress --no-metallb --cluster-name demo
```

- `--no-ingress`: Excludes the Ingress controller setup from the cluster.
- `--no-metallb`: Omits the MetalLB load-balancer setup.
- `--cluster-name demo`: Sets the name of the Kubernetes cluster to "demo."

### Tested On

- **Bash Version:** 5.1.8

The script is tested to ensure compatibility with Bash version 5.1.8, but it should work with other versions of Bash as well.

### Example

Here is an example command to create a basic Kubernetes cluster with the default settings:

```bash
$ ./create-cluster.sh --cluster-name my-cluster
```

In this example, the cluster will be created with the default configurations for Ingress and MetalLB.

### Additional Information

For more detailed usage and options, please refer to the script documentation or run the script with the `--help` flag:

```bash
$ ./create-cluster.sh --help
```

This will display additional options and usage instructions.

---

Feel free to modify or expand upon this description based on any additional features or details about your script!
```
