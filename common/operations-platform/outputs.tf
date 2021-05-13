output "namespace" {
  description = "Kubernetes namespace created for Flightdeck"
  value       = module.workload_platform.flightdeck_namespace
}

output "url" {
  description = "URL at which Flightdeck is reachable"
  value       = "https://${var.host}"
}
