# --- azurerm_datadog_monitor ---
output "datadog_monitors" {
  description = "All datadog_monitor resources"
  value       = module.datadog_monitors.datadog_monitors
  sensitive   = true
}
output "datadog_monitors_datadog_organization" {
  description = "List of datadog_organization values across all datadog_monitors"
  value       = [for k, v in module.datadog_monitors.datadog_monitors : v.datadog_organization]
  sensitive   = true
}
output "datadog_monitors_identity" {
  description = "List of identity values across all datadog_monitors"
  value       = [for k, v in module.datadog_monitors.datadog_monitors : v.identity]
}
output "datadog_monitors_location" {
  description = "List of location values across all datadog_monitors"
  value       = [for k, v in module.datadog_monitors.datadog_monitors : v.location]
}
output "datadog_monitors_marketplace_subscription_status" {
  description = "List of marketplace_subscription_status values across all datadog_monitors"
  value       = [for k, v in module.datadog_monitors.datadog_monitors : v.marketplace_subscription_status]
}
output "datadog_monitors_monitoring_enabled" {
  description = "List of monitoring_enabled values across all datadog_monitors"
  value       = [for k, v in module.datadog_monitors.datadog_monitors : v.monitoring_enabled]
}
output "datadog_monitors_name" {
  description = "List of name values across all datadog_monitors"
  value       = [for k, v in module.datadog_monitors.datadog_monitors : v.name]
}
output "datadog_monitors_resource_group_name" {
  description = "List of resource_group_name values across all datadog_monitors"
  value       = [for k, v in module.datadog_monitors.datadog_monitors : v.resource_group_name]
}
output "datadog_monitors_sku_name" {
  description = "List of sku_name values across all datadog_monitors"
  value       = [for k, v in module.datadog_monitors.datadog_monitors : v.sku_name]
}
output "datadog_monitors_tags" {
  description = "List of tags values across all datadog_monitors"
  value       = [for k, v in module.datadog_monitors.datadog_monitors : v.tags]
}
output "datadog_monitors_user" {
  description = "List of user values across all datadog_monitors"
  value       = [for k, v in module.datadog_monitors.datadog_monitors : v.user]
}


# --- azurerm_datadog_monitor_sso_configuration ---
output "datadog_monitor_sso_configurations" {
  description = "All datadog_monitor_sso_configuration resources"
  value       = module.datadog_monitor_sso_configurations.datadog_monitor_sso_configurations
}
output "datadog_monitor_sso_configurations_datadog_monitor_id" {
  description = "List of datadog_monitor_id values across all datadog_monitor_sso_configurations"
  value       = [for k, v in module.datadog_monitor_sso_configurations.datadog_monitor_sso_configurations : v.datadog_monitor_id]
}
output "datadog_monitor_sso_configurations_enterprise_application_id" {
  description = "List of enterprise_application_id values across all datadog_monitor_sso_configurations"
  value       = [for k, v in module.datadog_monitor_sso_configurations.datadog_monitor_sso_configurations : v.enterprise_application_id]
}
output "datadog_monitor_sso_configurations_login_url" {
  description = "List of login_url values across all datadog_monitor_sso_configurations"
  value       = [for k, v in module.datadog_monitor_sso_configurations.datadog_monitor_sso_configurations : v.login_url]
}
output "datadog_monitor_sso_configurations_name" {
  description = "List of name values across all datadog_monitor_sso_configurations"
  value       = [for k, v in module.datadog_monitor_sso_configurations.datadog_monitor_sso_configurations : v.name]
}
output "datadog_monitor_sso_configurations_single_sign_on" {
  description = "List of single_sign_on values across all datadog_monitor_sso_configurations"
  value       = [for k, v in module.datadog_monitor_sso_configurations.datadog_monitor_sso_configurations : v.single_sign_on]
}
output "datadog_monitor_sso_configurations_single_sign_on_enabled" {
  description = "List of single_sign_on_enabled values across all datadog_monitor_sso_configurations"
  value       = [for k, v in module.datadog_monitor_sso_configurations.datadog_monitor_sso_configurations : v.single_sign_on_enabled]
}


# --- azurerm_datadog_monitor_tag_rule ---
output "datadog_monitor_tag_rules" {
  description = "All datadog_monitor_tag_rule resources"
  value       = module.datadog_monitor_tag_rules.datadog_monitor_tag_rules
}
output "datadog_monitor_tag_rules_datadog_monitor_id" {
  description = "List of datadog_monitor_id values across all datadog_monitor_tag_rules"
  value       = [for k, v in module.datadog_monitor_tag_rules.datadog_monitor_tag_rules : v.datadog_monitor_id]
}
output "datadog_monitor_tag_rules_log" {
  description = "List of log values across all datadog_monitor_tag_rules"
  value       = [for k, v in module.datadog_monitor_tag_rules.datadog_monitor_tag_rules : v.log]
}
output "datadog_monitor_tag_rules_metric" {
  description = "List of metric values across all datadog_monitor_tag_rules"
  value       = [for k, v in module.datadog_monitor_tag_rules.datadog_monitor_tag_rules : v.metric]
}
output "datadog_monitor_tag_rules_name" {
  description = "List of name values across all datadog_monitor_tag_rules"
  value       = [for k, v in module.datadog_monitor_tag_rules.datadog_monitor_tag_rules : v.name]
}



