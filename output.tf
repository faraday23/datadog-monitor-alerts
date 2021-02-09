output "datadog_active_connections_alert_name" {
  value = datadog_monitor.mssql_active_connections_usage.*.name
}

output "datadog_active_connections_alert_id" {
  value = datadog_monitor.mssql_active_connections_usage.*.id
}

output "datadog_cpu_alert_name" {
  value = datadog_monitor.mssql_cpu_usage.*.name
}

output "datadog_cpu_alert_id" {
  value = datadog_monitor.mssql_cpu_usage.*.id
}

output "datadog_failed_connections_alert_name" {
  value = datadog_monitor.mssql_failed_connections.*.name
}

output "datadog_failed_connections_alert_id" {
  value = datadog_monitor.mssql_failed_connections.*.id
}

output "datadog_blocked_connections_alert_name" {
  value = datadog_monitor.mssql_blocked_connections.*.name
}

output "datadog_blocked_connections_alert_id" {
  value = datadog_monitor.mssql_blocked_connections.*.id
}

output "datadog_deadlock_alert_name" {
  value = datadog_monitor.mssql_deadlock.*.name
}

output "datadog_deadlock_alert_id" {
  value = datadog_monitor.mssql_deadlock.*.id
}

output "datadog_memory_alert_name" {
  value = datadog_monitor.mssql_memory_usage.*.name
}

output "datadog_memory_alert_id" {
  value = datadog_monitor.mssql_memory_usage.*.id
}

output "datadog_xtp_storage_percent_name" {
  value = datadog_monitor.mssql_xtp_storage_percent.*.name
}

output "datadog_xtp_storage_percent_id" {
  value = datadog_monitor.mssql_xtp_storage_percent.*.id
}

output "datadog_storage_alert_name" {
  value = datadog_monitor.mssql_storage_usage.*.name
}

output "datadog_storage_alert_id" {
  value = datadog_monitor.mssql_storage_usage.*.id
}

output "datadog_session_percent_alert_name" {
  value = datadog_monitor.mssql_session_percent.*.name
}

output "datadog_session_percent_alert_id" {
  value = datadog_monitor.mssql_session_percent.*.id
}

output "datadog_workers_percent_alert_name" {
  value = datadog_monitor.mssql_workers_percent.*.name
}

output "datadog_workers_percent_alert_id" {
  value = datadog_monitor.mssql_workers_percent.*.id
}

output "datadog_status_alert_name" {
  value = datadog_monitor.mssql_status.*.name
}

output "datadog_status_alert_id" {
  value = datadog_monitor.mssql_status.*.id
}
