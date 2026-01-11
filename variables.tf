variable "public_ips" {
  description = <<EOT
Map of public_ips, attributes below
Required:
    - allocation_method
    - location
    - name
    - resource_group_name
Optional:
    - ddos_protection_mode
    - ddos_protection_plan_id
    - domain_name_label
    - domain_name_label_scope
    - edge_zone
    - idle_timeout_in_minutes
    - ip_tags
    - ip_version
    - public_ip_prefix_id
    - reverse_fqdn
    - sku
    - sku_tier
    - tags
    - zones
EOT

  type = map(object({
    allocation_method       = string
    location                = string
    name                    = string
    resource_group_name     = string
    sku_tier                = optional(string, "Regional")
    sku                     = optional(string, "Standard")
    reverse_fqdn            = optional(string)
    public_ip_prefix_id     = optional(string)
    ip_version              = optional(string, "IPv4")
    ip_tags                 = optional(map(string))
    edge_zone               = optional(string)
    tags                    = optional(map(string))
    domain_name_label_scope = optional(string)
    domain_name_label       = optional(string)
    ddos_protection_plan_id = optional(string)
    ddos_protection_mode    = optional(string, "VirtualNetworkInherited")
    idle_timeout_in_minutes = optional(number, 4)
    zones                   = optional(set(string))
  }))
}

