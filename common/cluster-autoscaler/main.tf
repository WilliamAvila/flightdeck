resource "helm_release" "this" {
  chart      = var.chart_name
  name       = var.name
  namespace  = var.k8s_namespace
  repository = var.chart_repository
  values     = concat(local.chart_values, var.chart_values)
  version    = var.chart_version
}

locals {
  chart_values = [
    yamlencode({
      extraArgs = {
        balance-similar-node-groups   = true
        skip-nodes-with-local-storage = false
      }
      fullnameOverride = var.name
    })
  ]
}
