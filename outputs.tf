# --- azurerm_datadog_monitor ---
output "datadog_monitors_id" {
  description = "Map of id values across all datadog_monitors, keyed the same as var.datadog_monitors"
  value       = module.datadog_monitors.datadog_monitors_id
}

output "datadog_monitors_datadog_organization" {
  description = "Map of datadog_organization values across all datadog_monitors, keyed the same as var.datadog_monitors"
  value       = module.datadog_monitors.datadog_monitors_datadog_organization
  sensitive   = true
}

output "datadog_monitors_identity" {
  description = "Map of identity values across all datadog_monitors, keyed the same as var.datadog_monitors"
  value       = module.datadog_monitors.datadog_monitors_identity
}

output "datadog_monitors_location" {
  description = "Map of location values across all datadog_monitors, keyed the same as var.datadog_monitors"
  value       = module.datadog_monitors.datadog_monitors_location
}

output "datadog_monitors_marketplace_subscription_status" {
  description = "Map of marketplace_subscription_status values across all datadog_monitors, keyed the same as var.datadog_monitors"
  value       = module.datadog_monitors.datadog_monitors_marketplace_subscription_status
}

output "datadog_monitors_monitoring_enabled" {
  description = "Map of monitoring_enabled values across all datadog_monitors, keyed the same as var.datadog_monitors"
  value       = module.datadog_monitors.datadog_monitors_monitoring_enabled
}

output "datadog_monitors_name" {
  description = "Map of name values across all datadog_monitors, keyed the same as var.datadog_monitors"
  value       = module.datadog_monitors.datadog_monitors_name
}

output "datadog_monitors_resource_group_name" {
  description = "Map of resource_group_name values across all datadog_monitors, keyed the same as var.datadog_monitors"
  value       = module.datadog_monitors.datadog_monitors_resource_group_name
}

output "datadog_monitors_sku_name" {
  description = "Map of sku_name values across all datadog_monitors, keyed the same as var.datadog_monitors"
  value       = module.datadog_monitors.datadog_monitors_sku_name
}

output "datadog_monitors_tags" {
  description = "Map of tags values across all datadog_monitors, keyed the same as var.datadog_monitors"
  value       = module.datadog_monitors.datadog_monitors_tags
}

output "datadog_monitors_user" {
  description = "Map of user values across all datadog_monitors, keyed the same as var.datadog_monitors"
  value       = module.datadog_monitors.datadog_monitors_user
}

# --- azurerm_datadog_monitor_sso_configuration ---
output "datadog_monitor_sso_configurations_id" {
  description = "Map of id values across all datadog_monitor_sso_configurations, keyed the same as var.datadog_monitor_sso_configurations"
  value       = module.datadog_monitor_sso_configurations.datadog_monitor_sso_configurations_id
}

output "datadog_monitor_sso_configurations_datadog_monitor_id" {
  description = "Map of datadog_monitor_id values across all datadog_monitor_sso_configurations, keyed the same as var.datadog_monitor_sso_configurations"
  value       = module.datadog_monitor_sso_configurations.datadog_monitor_sso_configurations_datadog_monitor_id
}

output "datadog_monitor_sso_configurations_enterprise_application_id" {
  description = "Map of enterprise_application_id values across all datadog_monitor_sso_configurations, keyed the same as var.datadog_monitor_sso_configurations"
  value       = module.datadog_monitor_sso_configurations.datadog_monitor_sso_configurations_enterprise_application_id
}

output "datadog_monitor_sso_configurations_login_url" {
  description = "Map of login_url values across all datadog_monitor_sso_configurations, keyed the same as var.datadog_monitor_sso_configurations"
  value       = module.datadog_monitor_sso_configurations.datadog_monitor_sso_configurations_login_url
}

output "datadog_monitor_sso_configurations_name" {
  description = "Map of name values across all datadog_monitor_sso_configurations, keyed the same as var.datadog_monitor_sso_configurations"
  value       = module.datadog_monitor_sso_configurations.datadog_monitor_sso_configurations_name
}

output "datadog_monitor_sso_configurations_single_sign_on" {
  description = "Map of single_sign_on values across all datadog_monitor_sso_configurations, keyed the same as var.datadog_monitor_sso_configurations"
  value       = module.datadog_monitor_sso_configurations.datadog_monitor_sso_configurations_single_sign_on
}

output "datadog_monitor_sso_configurations_single_sign_on_enabled" {
  description = "Map of single_sign_on_enabled values across all datadog_monitor_sso_configurations, keyed the same as var.datadog_monitor_sso_configurations"
  value       = module.datadog_monitor_sso_configurations.datadog_monitor_sso_configurations_single_sign_on_enabled
}

# --- azurerm_datadog_monitor_tag_rule ---
output "datadog_monitor_tag_rules_id" {
  description = "Map of id values across all datadog_monitor_tag_rules, keyed the same as var.datadog_monitor_tag_rules"
  value       = module.datadog_monitor_tag_rules.datadog_monitor_tag_rules_id
}

output "datadog_monitor_tag_rules_datadog_monitor_id" {
  description = "Map of datadog_monitor_id values across all datadog_monitor_tag_rules, keyed the same as var.datadog_monitor_tag_rules"
  value       = module.datadog_monitor_tag_rules.datadog_monitor_tag_rules_datadog_monitor_id
}

output "datadog_monitor_tag_rules_log" {
  description = "Map of log values across all datadog_monitor_tag_rules, keyed the same as var.datadog_monitor_tag_rules"
  value       = module.datadog_monitor_tag_rules.datadog_monitor_tag_rules_log
}

output "datadog_monitor_tag_rules_metric" {
  description = "Map of metric values across all datadog_monitor_tag_rules, keyed the same as var.datadog_monitor_tag_rules"
  value       = module.datadog_monitor_tag_rules.datadog_monitor_tag_rules_metric
}

output "datadog_monitor_tag_rules_name" {
  description = "Map of name values across all datadog_monitor_tag_rules, keyed the same as var.datadog_monitor_tag_rules"
  value       = module.datadog_monitor_tag_rules.datadog_monitor_tag_rules_name
}


