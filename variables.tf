variable "connect_instance_storage_config_lookup" {
  description = <<EOT
Map of connect_instance_storage_config_lookup, attributes below
Required:
    - association_id
    - instance_id
    - resource_type
Optional:
    - region
EOT

  type = map(object({
    association_id = string
    instance_id    = string
    resource_type  = string
    region         = optional(string)
  }))
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

