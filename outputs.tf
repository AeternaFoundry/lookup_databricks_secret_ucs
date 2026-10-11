output "secret_ucs_lookup_catalog_name" {
  description = "Map of catalog_name values across all secret_ucs_lookup, keyed the same as var.secret_ucs_lookup except keys with no catalog_name are omitted"
  value       = { for k, v in data.databricks_secret_ucs.secret_ucs_lookup : k => v.catalog_name if v.catalog_name != null && length(v.catalog_name) > 0 }
}
output "secret_ucs_lookup_page_size" {
  description = "Map of page_size values across all secret_ucs_lookup, keyed the same as var.secret_ucs_lookup except keys with no page_size are omitted"
  value       = { for k, v in data.databricks_secret_ucs.secret_ucs_lookup : k => v.page_size if v.page_size != null }
}
output "secret_ucs_lookup_provider_config" {
  description = "Map of provider_config values across all secret_ucs_lookup, keyed the same as var.secret_ucs_lookup except keys with no provider_config are omitted"
  value       = { for k, v in data.databricks_secret_ucs.secret_ucs_lookup : k => v.provider_config if v.provider_config != null && length(v.provider_config) > 0 }
}
output "secret_ucs_lookup_schema_name" {
  description = "Map of schema_name values across all secret_ucs_lookup, keyed the same as var.secret_ucs_lookup except keys with no schema_name are omitted"
  value       = { for k, v in data.databricks_secret_ucs.secret_ucs_lookup : k => v.schema_name if v.schema_name != null && length(v.schema_name) > 0 }
}
output "secret_ucs_lookup_secrets" {
  description = "Map of secrets values across all secret_ucs_lookup, keyed the same as var.secret_ucs_lookup except keys with no secrets are omitted"
  value       = { for k, v in data.databricks_secret_ucs.secret_ucs_lookup : k => v.secrets if v.secrets != null && length(v.secrets) > 0 }
}

