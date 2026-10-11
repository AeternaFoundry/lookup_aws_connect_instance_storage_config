data "aws_connect_instance_storage_config" "connect_instance_storage_config_lookup" {
  for_each = var.connect_instance_storage_config_lookup

  association_id = each.value.association_id
  instance_id    = each.value.instance_id
  resource_type  = each.value.resource_type
  region         = each.value.region
}

