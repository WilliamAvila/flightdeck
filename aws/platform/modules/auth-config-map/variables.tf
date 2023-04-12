variable "admin_roles" {
  type        = list(string)
  description = "Role ARNs which have admin privileges within the cluster"

  validation {
    condition     = length(var.admin_roles) > 0
    error_message = "Without an admin role, you will be unable to administrate the cluster."
  }
}

variable "cluster_full_name" {
  type        = string
  description = "Full name of the EKS cluster"
}

variable "custom_roles" {
  type        = map(string)
  default     = {}
  description = "Role ARNs which have custom privileges within the cluster"
}

variable "k8s_namespace" {
  type        = string
  description = "Kubernetes namespace for the Helm release"
  default     = "kube-system"
}

variable "node_roles" {
  type        = list(string)
  description = "Roles for EKS node groups in this cluster"

  validation {
    condition     = length(var.node_roles) > 0
    error_message = "Without a node role, no nodes can join the cluster."
  }
}
