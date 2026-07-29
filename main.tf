locals {
  datadog_monitors = { for k1, v1 in var.datadog_monitors : k1 => { datadog_organization = v1.datadog_organization, identity = v1.identity, location = v1.location, monitoring_enabled = v1.monitoring_enabled, name = v1.name, resource_group_name = v1.resource_group_name, sku_name = v1.sku_name, tags = v1.tags, user = v1.user } }

  datadog_monitor_sso_configurations = merge([
    for k1, v1 in var.datadog_monitors : {
      for k2, v2 in coalesce(v1.datadog_monitor_sso_configurations, {}) :
      "${k1}/${k2}" => merge(v2, {
        datadog_monitor_id = module.datadog_monitors.datadog_monitors_id["${k1}"]
      })
    }
  ]...)

  datadog_monitor_tag_rules = merge([
    for k1, v1 in var.datadog_monitors : {
      for k2, v2 in coalesce(v1.datadog_monitor_tag_rules, {}) :
      "${k1}/${k2}" => merge(v2, {
        datadog_monitor_id = module.datadog_monitors.datadog_monitors_id["${k1}"]
      })
    }
  ]...)
}

module "datadog_monitors" {
  source           = "git::https://github.com/AeternaModules/azurerm_datadog_monitor.git?ref=v5.0.0"
  datadog_monitors = local.datadog_monitors
}

module "datadog_monitor_sso_configurations" {
  source                             = "git::https://github.com/AeternaModules/azurerm_datadog_monitor_sso_configuration.git?ref=v5.0.0"
  datadog_monitor_sso_configurations = local.datadog_monitor_sso_configurations
  depends_on                         = [module.datadog_monitors]
}

module "datadog_monitor_tag_rules" {
  source                    = "git::https://github.com/AeternaModules/azurerm_datadog_monitor_tag_rule.git?ref=v5.0.0"
  datadog_monitor_tag_rules = local.datadog_monitor_tag_rules
  depends_on                = [module.datadog_monitors]
}

