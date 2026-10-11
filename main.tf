data "databricks_secret_ucs" "secret_ucs_lookup" {
  for_each = var.secret_ucs_lookup

  catalog_name    = each.value.catalog_name
  page_size       = each.value.page_size
  provider_config = each.value.provider_config
  schema_name     = each.value.schema_name
}

