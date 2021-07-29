variable "admin_roles" {
  type        = list(string)
  description = "Additional IAM roles which have admin cluster privileges"
  default     = []
}

variable "aws_load_balancer_controller_values" {
  description = "Overrides to pass to the Helm chart"
  type        = list(string)
  default     = []
}

variable "aws_load_balancer_controller_version" {
  type        = string
  description = "Version of aws-load-balancer-controller to install"
  default     = "1.2.3"
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

variable "certificate_email" {
  type        = string
  description = "Email to be notified of certificate expiration and renewal"
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

variable "cluster_name" {
  type        = string
  description = "Name of the EKS cluster"
}

variable "custom_roles" {
  type        = map(string)
  description = "Additional IAM roles which have custom cluster privileges"
  default     = {}
}

variable "domain_names" {
  type        = list(string)
  default     = []
  description = "Domains which are allowed in this cluster"
}

variable "external_dns_enabled" {
  description = "Set to true to enable External DNS"
  type        = bool
  default     = false
}

variable "external_dns_values" {
  description = "Overrides to pass to the Helm chart"
  type        = list(string)
  default     = []
}

variable "fluent_bit_values" {
  description = "Overrides to pass to the Helm chart"
  type        = list(string)
  default     = []
}

variable "istio_discovery_values" {
  description = "Overrides to pass to the Helm chart"
  type        = list(string)
  default     = []
}

variable "istio_ingress_values" {
  description = "Overrides to pass to the Helm chart"
  type        = list(string)
  default     = []
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

variable "logs_retention_in_days" {
  type        = number
  default     = 30
  description = "Number of days for which logs should be retained"
}

variable "node_roles" {
  type        = list(string)
  description = "Additional node roles which can join the cluster"
  default     = []
}

variable "pagerduty_parameter" {
  type        = string
  description = "SSM parameter containing the Pagerduty routing key"
  default     = null
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
