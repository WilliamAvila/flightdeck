variable "chart_name" {
  type        = string
  description = "Helm chart to install"
  default     = null
}

variable "chart_values" {
  description = "Overrides to pass to the Helm chart"
  type        = list(string)
  default     = []
}

variable "chart_version" {
  type        = string
  description = "Version of chart to install"
  default     = null
}

variable "chart_repository" {
  type        = string
  description = "Helm repository containing the chart"
  default     = null
}

variable "k8s_namespace" {
  type        = string
  description = "Kubernetes namespace in which resources will be written"
}

variable "name" {
  type        = string
  description = "Name for the Helm release"
  default     = "secrets-store-csi-driver"
}
