  variable "cluster_name" {
    description = ""
  }

  variable "public_subnets" {
    description = ""
  }

  variable "security_group_ids" {
    description = ""
  }

  variable "endpoint_public_access" {
    description = ""
  }

  # EKS Node Group resource
  variable "node_group_name" {
    description = ""
  }
  variable "instance_types" {
    description = ""
  }
  variable "capacity_type" {
    description = ""
  }
  variable "desired_size" {
    description = ""
  }
  variable "max_size" {
    description = ""
  }
  variable "min_size" {
    description = ""
  }

  variable "addons" {
    type = list(object({
      name    = string
      version = string
    }))

    default = [
      {
        name    = "kube-proxy"
        version = "v1.28.1-eksbuild.1"
      },
      {
        name    = "vpc-cni"
        version = "v1.14.1-eksbuild.1"
      },
      {
        name    = "coredns"
        version = "v1.10.1-eksbuild.2"
      }
    ]
  }