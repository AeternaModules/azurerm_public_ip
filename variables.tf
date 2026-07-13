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
    sku_tier                = optional(string)
    sku                     = optional(string)
    reverse_fqdn            = optional(string)
    public_ip_prefix_id     = optional(string)
    ip_version              = optional(string)
    ip_tags                 = optional(map(string))
    edge_zone               = optional(string)
    tags                    = optional(map(string))
    domain_name_label_scope = optional(string)
    domain_name_label       = optional(string)
    ddos_protection_plan_id = optional(string)
    ddos_protection_mode    = optional(string)
    idle_timeout_in_minutes = optional(number)
    zones                   = optional(set(string))
  }))
  validation {
    condition = alltrue([
      for k, v in var.public_ips : (
        length(v.name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.public_ips : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.public_ips : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.public_ips : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.public_ips : (
        v.edge_zone == null || (length(v.edge_zone) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.public_ips : (
        v.idle_timeout_in_minutes == null || (v.idle_timeout_in_minutes >= 4 && v.idle_timeout_in_minutes <= 30)
      )
    ])
    error_message = "must be between 4 and 30"
  }
  validation {
    condition = alltrue([
      for k, v in var.public_ips : (
        v.zones == null || (alltrue([for x in v.zones : length(x) > 0]))
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.public_ips : (
        v.tags == null || (length(v.tags) <= 50)
      )
    ])
    error_message = "[from tags.Validate: invalid when len(value) > 50]"
  }
  # Note: 16 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

