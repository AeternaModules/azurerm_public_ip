output "public_ips_id" {
  description = "Map of id values across all public_ips, keyed the same as var.public_ips"
  value       = { for k, v in azurerm_public_ip.public_ips : k => v.id if v.id != null && length(v.id) > 0 }
}
output "public_ips_allocation_method" {
  description = "Map of allocation_method values across all public_ips, keyed the same as var.public_ips"
  value       = { for k, v in azurerm_public_ip.public_ips : k => v.allocation_method if v.allocation_method != null && length(v.allocation_method) > 0 }
}
output "public_ips_ddos_protection_mode" {
  description = "Map of ddos_protection_mode values across all public_ips, keyed the same as var.public_ips"
  value       = { for k, v in azurerm_public_ip.public_ips : k => v.ddos_protection_mode if v.ddos_protection_mode != null && length(v.ddos_protection_mode) > 0 }
}
output "public_ips_ddos_protection_plan_id" {
  description = "Map of ddos_protection_plan_id values across all public_ips, keyed the same as var.public_ips"
  value       = { for k, v in azurerm_public_ip.public_ips : k => v.ddos_protection_plan_id if v.ddos_protection_plan_id != null && length(v.ddos_protection_plan_id) > 0 }
}
output "public_ips_domain_name_label" {
  description = "Map of domain_name_label values across all public_ips, keyed the same as var.public_ips"
  value       = { for k, v in azurerm_public_ip.public_ips : k => v.domain_name_label if v.domain_name_label != null && length(v.domain_name_label) > 0 }
}
output "public_ips_domain_name_label_scope" {
  description = "Map of domain_name_label_scope values across all public_ips, keyed the same as var.public_ips"
  value       = { for k, v in azurerm_public_ip.public_ips : k => v.domain_name_label_scope if v.domain_name_label_scope != null && length(v.domain_name_label_scope) > 0 }
}
output "public_ips_edge_zone" {
  description = "Map of edge_zone values across all public_ips, keyed the same as var.public_ips"
  value       = { for k, v in azurerm_public_ip.public_ips : k => v.edge_zone if v.edge_zone != null && length(v.edge_zone) > 0 }
}
output "public_ips_fqdn" {
  description = "Map of fqdn values across all public_ips, keyed the same as var.public_ips"
  value       = { for k, v in azurerm_public_ip.public_ips : k => v.fqdn if v.fqdn != null && length(v.fqdn) > 0 }
}
output "public_ips_idle_timeout_in_minutes" {
  description = "Map of idle_timeout_in_minutes values across all public_ips, keyed the same as var.public_ips"
  value       = { for k, v in azurerm_public_ip.public_ips : k => v.idle_timeout_in_minutes if v.idle_timeout_in_minutes != null }
}
output "public_ips_ip_address" {
  description = "Map of ip_address values across all public_ips, keyed the same as var.public_ips"
  value       = { for k, v in azurerm_public_ip.public_ips : k => v.ip_address if v.ip_address != null && length(v.ip_address) > 0 }
}
output "public_ips_ip_tags" {
  description = "Map of ip_tags values across all public_ips, keyed the same as var.public_ips"
  value       = { for k, v in azurerm_public_ip.public_ips : k => v.ip_tags if v.ip_tags != null && length(v.ip_tags) > 0 }
}
output "public_ips_ip_version" {
  description = "Map of ip_version values across all public_ips, keyed the same as var.public_ips"
  value       = { for k, v in azurerm_public_ip.public_ips : k => v.ip_version if v.ip_version != null && length(v.ip_version) > 0 }
}
output "public_ips_location" {
  description = "Map of location values across all public_ips, keyed the same as var.public_ips"
  value       = { for k, v in azurerm_public_ip.public_ips : k => v.location if v.location != null && length(v.location) > 0 }
}
output "public_ips_name" {
  description = "Map of name values across all public_ips, keyed the same as var.public_ips"
  value       = { for k, v in azurerm_public_ip.public_ips : k => v.name if v.name != null && length(v.name) > 0 }
}
output "public_ips_public_ip_prefix_id" {
  description = "Map of public_ip_prefix_id values across all public_ips, keyed the same as var.public_ips"
  value       = { for k, v in azurerm_public_ip.public_ips : k => v.public_ip_prefix_id if v.public_ip_prefix_id != null && length(v.public_ip_prefix_id) > 0 }
}
output "public_ips_resource_group_name" {
  description = "Map of resource_group_name values across all public_ips, keyed the same as var.public_ips"
  value       = { for k, v in azurerm_public_ip.public_ips : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "public_ips_reverse_fqdn" {
  description = "Map of reverse_fqdn values across all public_ips, keyed the same as var.public_ips"
  value       = { for k, v in azurerm_public_ip.public_ips : k => v.reverse_fqdn if v.reverse_fqdn != null && length(v.reverse_fqdn) > 0 }
}
output "public_ips_sku" {
  description = "Map of sku values across all public_ips, keyed the same as var.public_ips"
  value       = { for k, v in azurerm_public_ip.public_ips : k => v.sku if v.sku != null && length(v.sku) > 0 }
}
output "public_ips_sku_tier" {
  description = "Map of sku_tier values across all public_ips, keyed the same as var.public_ips"
  value       = { for k, v in azurerm_public_ip.public_ips : k => v.sku_tier if v.sku_tier != null && length(v.sku_tier) > 0 }
}
output "public_ips_tags" {
  description = "Map of tags values across all public_ips, keyed the same as var.public_ips"
  value       = { for k, v in azurerm_public_ip.public_ips : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "public_ips_zones" {
  description = "Map of zones values across all public_ips, keyed the same as var.public_ips"
  value       = { for k, v in azurerm_public_ip.public_ips : k => v.zones if v.zones != null && length(v.zones) > 0 }
}

