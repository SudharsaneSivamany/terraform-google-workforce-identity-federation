output "pool_id" {
  description = "Pool id"
  value       = google_iam_workforce_pool.pool.id
}

output "pool_state" {
  description = "Pool state"
  value       = google_iam_workforce_pool.pool.state
}

output "pool_name" {
  description = "Pool name"
  value       = google_iam_workforce_pool.pool.name
}

output "provider_id" {
  description = "Provider id"
  value = { for id in var.wif_providers : id.provider_id => { id = google_iam_workforce_pool_provider.provider[id.provider_id].id
    state = google_iam_workforce_pool_provider.provider[id.provider_id].state
    name = google_iam_workforce_pool_provider.provider[id.provider_id].name }
  }
}
