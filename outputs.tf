output "public_ips_id" {
  description = "Map of id values across all public_ips, keyed the same as var.public_ips"
  value       = { for k, v in azurerm_public_ip.public_ips : k => v.id }
}
output "public_ips_allocation_method" {
  description = "Map of allocation_method values across all public_ips, keyed the same as var.public_ips"
  value       = { for k, v in azurerm_public_ip.public_ips : k => v.allocation_method }
}
output "public_ips_ddos_protection_mode" {
  description = "Map of ddos_protection_mode values across all public_ips, keyed the same as var.public_ips"
  value       = { for k, v in azurerm_public_ip.public_ips : k => v.ddos_protection_mode }
}
output "public_ips_ddos_protection_plan_id" {
  description = "Map of ddos_protection_plan_id values across all public_ips, keyed the same as var.public_ips"
  value       = { for k, v in azurerm_public_ip.public_ips : k => v.ddos_protection_plan_id }
}
output "public_ips_domain_name_label" {
  description = "Map of domain_name_label values across all public_ips, keyed the same as var.public_ips"
  value       = { for k, v in azurerm_public_ip.public_ips : k => v.domain_name_label }
}
output "public_ips_domain_name_label_scope" {
  description = "Map of domain_name_label_scope values across all public_ips, keyed the same as var.public_ips"
  value       = { for k, v in azurerm_public_ip.public_ips : k => v.domain_name_label_scope }
}
output "public_ips_edge_zone" {
  description = "Map of edge_zone values across all public_ips, keyed the same as var.public_ips"
  value       = { for k, v in azurerm_public_ip.public_ips : k => v.edge_zone }
}
output "public_ips_fqdn" {
  description = "Map of fqdn values across all public_ips, keyed the same as var.public_ips"
  value       = { for k, v in azurerm_public_ip.public_ips : k => v.fqdn }
}
output "public_ips_idle_timeout_in_minutes" {
  description = "Map of idle_timeout_in_minutes values across all public_ips, keyed the same as var.public_ips"
  value       = { for k, v in azurerm_public_ip.public_ips : k => v.idle_timeout_in_minutes }
}
output "public_ips_ip_address" {
  description = "Map of ip_address values across all public_ips, keyed the same as var.public_ips"
  value       = { for k, v in azurerm_public_ip.public_ips : k => v.ip_address }
}
output "public_ips_ip_tags" {
  description = "Map of ip_tags values across all public_ips, keyed the same as var.public_ips"
  value       = { for k, v in azurerm_public_ip.public_ips : k => v.ip_tags }
}
output "public_ips_ip_version" {
  description = "Map of ip_version values across all public_ips, keyed the same as var.public_ips"
  value       = { for k, v in azurerm_public_ip.public_ips : k => v.ip_version }
}
output "public_ips_location" {
  description = "Map of location values across all public_ips, keyed the same as var.public_ips"
  value       = { for k, v in azurerm_public_ip.public_ips : k => v.location }
}
output "public_ips_name" {
  description = "Map of name values across all public_ips, keyed the same as var.public_ips"
  value       = { for k, v in azurerm_public_ip.public_ips : k => v.name }
}
output "public_ips_public_ip_prefix_id" {
  description = "Map of public_ip_prefix_id values across all public_ips, keyed the same as var.public_ips"
  value       = { for k, v in azurerm_public_ip.public_ips : k => v.public_ip_prefix_id }
}
output "public_ips_resource_group_name" {
  description = "Map of resource_group_name values across all public_ips, keyed the same as var.public_ips"
  value       = { for k, v in azurerm_public_ip.public_ips : k => v.resource_group_name }
}
output "public_ips_reverse_fqdn" {
  description = "Map of reverse_fqdn values across all public_ips, keyed the same as var.public_ips"
  value       = { for k, v in azurerm_public_ip.public_ips : k => v.reverse_fqdn }
}
output "public_ips_sku" {
  description = "Map of sku values across all public_ips, keyed the same as var.public_ips"
  value       = { for k, v in azurerm_public_ip.public_ips : k => v.sku }
}
output "public_ips_sku_tier" {
  description = "Map of sku_tier values across all public_ips, keyed the same as var.public_ips"
  value       = { for k, v in azurerm_public_ip.public_ips : k => v.sku_tier }
}
output "public_ips_tags" {
  description = "Map of tags values across all public_ips, keyed the same as var.public_ips"
  value       = { for k, v in azurerm_public_ip.public_ips : k => v.tags }
}
output "public_ips_zones" {
  description = "Map of zones values across all public_ips, keyed the same as var.public_ips"
  value       = { for k, v in azurerm_public_ip.public_ips : k => v.zones }
}

