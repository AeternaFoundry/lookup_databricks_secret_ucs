variable "secret_ucs_lookup" {
  description = <<EOT
Map of secret_ucs_lookup, attributes below
Optional:
    - catalog_name
    - page_size
    - provider_config
    - schema_name
EOT

  type = map(object({
    catalog_name = optional(string)
    page_size    = optional(number)
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
    schema_name = optional(string)
  }))
}

