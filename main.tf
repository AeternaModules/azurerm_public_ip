resource "azurerm_public_ip" "public_ips" {
  for_each = var.public_ips

  allocation_method       = each.value.allocation_method
  location                = each.value.location
  name                    = each.value.name
  resource_group_name     = each.value.resource_group_name
  sku_tier                = each.value.sku_tier
  sku                     = each.value.sku
  reverse_fqdn            = each.value.reverse_fqdn
  public_ip_prefix_id     = each.value.public_ip_prefix_id
  ip_version              = each.value.ip_version
  ip_tags                 = each.value.ip_tags
  edge_zone               = each.value.edge_zone
  tags                    = each.value.tags
  domain_name_label_scope = each.value.domain_name_label_scope
  domain_name_label       = each.value.domain_name_label
  ddos_protection_plan_id = each.value.ddos_protection_plan_id
  ddos_protection_mode    = each.value.ddos_protection_mode
  idle_timeout_in_minutes = each.value.idle_timeout_in_minutes
  zones                   = each.value.zones
}

