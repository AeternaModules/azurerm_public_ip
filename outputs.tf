output "public_ips" {
  description = "All public_ip resources"
  value       = azurerm_public_ip.public_ips
}
output "public_ips_allocation_method" {
  description = "List of allocation_method values across all public_ips"
  value       = [for k, v in azurerm_public_ip.public_ips : v.allocation_method]
}
output "public_ips_ddos_protection_mode" {
  description = "List of ddos_protection_mode values across all public_ips"
  value       = [for k, v in azurerm_public_ip.public_ips : v.ddos_protection_mode]
}
output "public_ips_ddos_protection_plan_id" {
  description = "List of ddos_protection_plan_id values across all public_ips"
  value       = [for k, v in azurerm_public_ip.public_ips : v.ddos_protection_plan_id]
}
output "public_ips_domain_name_label" {
  description = "List of domain_name_label values across all public_ips"
  value       = [for k, v in azurerm_public_ip.public_ips : v.domain_name_label]
}
output "public_ips_domain_name_label_scope" {
  description = "List of domain_name_label_scope values across all public_ips"
  value       = [for k, v in azurerm_public_ip.public_ips : v.domain_name_label_scope]
}
output "public_ips_edge_zone" {
  description = "List of edge_zone values across all public_ips"
  value       = [for k, v in azurerm_public_ip.public_ips : v.edge_zone]
}
output "public_ips_fqdn" {
  description = "List of fqdn values across all public_ips"
  value       = [for k, v in azurerm_public_ip.public_ips : v.fqdn]
}
output "public_ips_idle_timeout_in_minutes" {
  description = "List of idle_timeout_in_minutes values across all public_ips"
  value       = [for k, v in azurerm_public_ip.public_ips : v.idle_timeout_in_minutes]
}
output "public_ips_ip_address" {
  description = "List of ip_address values across all public_ips"
  value       = [for k, v in azurerm_public_ip.public_ips : v.ip_address]
}
output "public_ips_ip_tags" {
  description = "List of ip_tags values across all public_ips"
  value       = [for k, v in azurerm_public_ip.public_ips : v.ip_tags]
}
output "public_ips_ip_version" {
  description = "List of ip_version values across all public_ips"
  value       = [for k, v in azurerm_public_ip.public_ips : v.ip_version]
}
output "public_ips_location" {
  description = "List of location values across all public_ips"
  value       = [for k, v in azurerm_public_ip.public_ips : v.location]
}
output "public_ips_name" {
  description = "List of name values across all public_ips"
  value       = [for k, v in azurerm_public_ip.public_ips : v.name]
}
output "public_ips_public_ip_prefix_id" {
  description = "List of public_ip_prefix_id values across all public_ips"
  value       = [for k, v in azurerm_public_ip.public_ips : v.public_ip_prefix_id]
}
output "public_ips_resource_group_name" {
  description = "List of resource_group_name values across all public_ips"
  value       = [for k, v in azurerm_public_ip.public_ips : v.resource_group_name]
}
output "public_ips_reverse_fqdn" {
  description = "List of reverse_fqdn values across all public_ips"
  value       = [for k, v in azurerm_public_ip.public_ips : v.reverse_fqdn]
}
output "public_ips_sku" {
  description = "List of sku values across all public_ips"
  value       = [for k, v in azurerm_public_ip.public_ips : v.sku]
}
output "public_ips_sku_tier" {
  description = "List of sku_tier values across all public_ips"
  value       = [for k, v in azurerm_public_ip.public_ips : v.sku_tier]
}
output "public_ips_tags" {
  description = "List of tags values across all public_ips"
  value       = [for k, v in azurerm_public_ip.public_ips : v.tags]
}
output "public_ips_zones" {
  description = "List of zones values across all public_ips"
  value       = [for k, v in azurerm_public_ip.public_ips : v.zones]
}

