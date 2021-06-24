variable "admin_roles" {
  type        = list(string)
  description = "Additional IAM roles which have admin cluster privileges"
  default     = []
}

variable "aws_namespace" {
  type        = list(string)
  default     = []
  description = "Prefix to be applied to created AWS resources"
}

variable "aws_tags" {
  type        = map(string)
  description = "Tags to be applied to created AWS resources"
  default     = {}
}

variable "cert_manager_values" {
  description = "Overrides to pass to the Helm chart"
  type        = list(string)
  default     = []
}

variable "cluster_autoscaler_values" {
  description = "Overrides to pass to the Helm chart"
  type        = list(string)
  default     = []
}

variable "custom_roles" {
  type        = map(string)
  description = "Additional IAM roles which have custom cluster privileges"
  default     = {}
}

variable "certificate_email" {
  type        = string
  description = "Email to be notified of certificate expiration and renewal"
}

variable "cluster_name" {
  type        = string
  description = "Name of the EKS cluster"
}

variable "domain_names" {
  type        = list(string)
  default     = []
  description = "Domains which are allowed in this cluster"
}

variable "dex_extra_secrets" {
  type        = map(string)
  default     = {}
  description = "Extra values to append to the Dex secret"
}

variable "dex_values" {
  description = "Overrides to pass to the Helm chart"
  type        = list(string)
  default     = []
}

variable "external_dns_values" {
  description = "Overrides to pass to the Helm chart"
  type        = list(string)
  default     = []
}

variable "host" {
  type        = string
  description = "Base hostname for flightdeck UI"
}

variable "hosted_zones" {
  type        = list(string)
  description = "Domain names for hosted zones allowed in this cluster"
  default     = []
}

variable "k8s_namespace" {
  type        = string
  default     = "flightdeck"
  description = "Kubernetes namespace in which resources should be created"
}

variable "node_roles" {
  type        = list(string)
  description = "Additional node roles which can join the cluster"
  default     = []
}

variable "prometheus_adapter_values" {
  description = "Overrides to pass to the Helm chart"
  type        = list(string)
  default     = []
}

variable "prometheus_operator_values" {
  description = "Overrides to pass to the Helm chart"
  type        = list(string)
  default     = []
}
