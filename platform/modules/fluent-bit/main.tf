resource "helm_release" "this" {
  chart      = coalesce(var.chart_name, local.chart_defaults.chart)
  name       = var.name
  namespace  = var.k8s_namespace
  repository = coalesce(var.chart_repository, local.chart_defaults.repository)
  values     = concat(local.chart_values, var.chart_values)
  version    = coalesce(var.chart_version, local.chart_defaults.version)
}

locals {
  chart_defaults = jsondecode(file("${path.module}/chart.json"))

  chart_values = [
    yamlencode({
      fullnameOverride = var.name

      # Ensure fluent-bit is able to run on each node
      priorityClassName = "system-node-critical"

      serviceMonitor = {
        enabled = true
        selector = {
          prometheus = "flightdeck-prometheus"
        }
      }
    }),
    templatefile("${path.module}/filters.yaml", {
      annotations = var.enable_kubernetes_annotations ? "On" : "Off"
      labels      = var.enable_kubernetes_labels ? "On" : "Off"
    })
  ]
}
