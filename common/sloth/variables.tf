variable "chart_name" {
  type        = string
  description = "Helm chart to install"
  default     = "sloth"
}

variable "chart_repository" {
  type        = string
  description = "Helm repository containing the chart"
  default     = "https://github.com/slok/sloth.git//deploy/kubernetes/helm?ref=v0.8.0"
}

variable "sloth_version" {
  type        = string
  description = "Version of Sloth Chart to be installed"
  default     = "0.3.0"
}

variable "k8s_namespace" {
  type        = string
  description = "Kubernetes namespace in which the gateway should be installed"
  default     = "flightdeck"
}

variable "name" {
  type        = string
  description = "Name of this Helm release"
  default     = "sloth"
}
