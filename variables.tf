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
    sku_tier                = optional(string) # Default: "Regional"
    sku                     = optional(string) # Default: "Standard"
    reverse_fqdn            = optional(string)
    public_ip_prefix_id     = optional(string)
    ip_version              = optional(string) # Default: "IPv4"
    ip_tags                 = optional(map(string))
    edge_zone               = optional(string)
    tags                    = optional(map(string))
    domain_name_label_scope = optional(string)
    domain_name_label       = optional(string)
    ddos_protection_plan_id = optional(string)
    ddos_protection_mode    = optional(string) # Default: "VirtualNetworkInherited"
    idle_timeout_in_minutes = optional(number) # Default: 4
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
        v.zones == null || (length(v.zones) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  # --- Unconfirmed validation candidates, derived from azurerm_public_ip's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: location
  #   source:    location.EnhancedValidate: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: allocation_method
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: ddos_protection_mode
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: ddos_protection_plan_id
  #   source:    [from ddosprotectionplans.ValidateDdosProtectionPlanID] !ok
  # path: ddos_protection_plan_id
  #   source:    [from ddosprotectionplans.ValidateDdosProtectionPlanID] err != nil
  # path: ip_version
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: sku
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: sku_tier
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: domain_name_label
  #   source:    [from validate.PublicIpDomainNameLabel] !regexp.MustCompile(`^[a-z][a-z0-9-]{1,61}[a-z0-9]$`).MatchString(value)
  # path: domain_name_label_scope
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: public_ip_prefix_id
  #   source:    [from publicipprefixes.ValidatePublicIPPrefixID] !ok
  # path: public_ip_prefix_id
  #   source:    [from publicipprefixes.ValidatePublicIPPrefixID] err != nil
  # path: tags
  #   condition: length(value) <= 50
  #   message:   [from tags.Validate: invalid when len(value) > 50]
  #   source:    [from tags.Validate: invalid when len(value) > 50]
  # path: tags
  #   condition: length(value) <= 512
  #   message:   [from tags.Validate: invalid when len(value) > 512]
  #   source:    [from tags.Validate: invalid when len(value) > 512]
  # path: tags
  #   source:    [from tags.Validate] err != nil
  # path: tags
  #   condition: length(value) <= 256
  #   message:   [from tags.Validate: invalid when len(value) > 256]
  #   source:    [from tags.Validate: invalid when len(value) > 256]
}

