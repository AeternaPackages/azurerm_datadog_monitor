variable "datadog_monitors" {
  description = <<EOT
Map of datadog_monitors, attributes below
Required:
    - location
    - name
    - resource_group_name
    - sku_name
    - datadog_organization (block)
    - user (block)
Optional:
    - monitoring_enabled
    - tags
    - identity (block)
Nested datadog_monitor_sso_configurations (azurerm_datadog_monitor_sso_configuration):
    Required:
        - enterprise_application_id
        - single_sign_on
    Optional:
        - name
Nested datadog_monitor_tag_rules (azurerm_datadog_monitor_tag_rule):
    Optional:
        - name
        - log (block)
        - metric (block)
EOT

  type = map(object({
    location            = string
    name                = string
    resource_group_name = string
    sku_name            = string
    monitoring_enabled  = optional(bool)
    tags                = optional(map(string))
    datadog_organization = object({
      api_key           = string
      application_key   = string
      enterprise_app_id = optional(string)
      linking_auth_code = optional(string)
      linking_client_id = optional(string)
      redirect_uri      = optional(string)
    })
    user = object({
      email        = string
      name         = string
      phone_number = optional(string)
    })
    identity = optional(object({
      type = string
    }))
    datadog_monitor_sso_configurations = optional(map(object({
      enterprise_application_id = string
      single_sign_on            = string
      name                      = optional(string)
    })))
    datadog_monitor_tag_rules = optional(map(object({
      name = optional(string)
      log = optional(list(object({
        aad_log_enabled = optional(bool)
        filter = optional(list(object({
          action = string
          name   = string
          value  = string
        })))
        resource_log_enabled     = optional(bool)
        subscription_log_enabled = optional(bool)
      })))
      metric = optional(list(object({
        filter = optional(list(object({
          action = string
          name   = string
          value  = string
        })))
      })))
    })))
  }))

  validation {
    condition = alltrue(concat(
      [for kk in keys(var.datadog_monitors) : !strcontains(kk, "/")],
      flatten([for k0, v0 in var.datadog_monitors : [for kk in keys(coalesce(v0.datadog_monitor_sso_configurations, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.datadog_monitors : [for kk in keys(coalesce(v0.datadog_monitor_tag_rules, {})) : !strcontains(kk, "/")]])
    ))
    error_message = "Map keys in this package must not contain '/': it is used internally as a nesting-key separator, so a key containing it can silently collide two different nested entries into one. Rename the offending key(s)."
  }
}
