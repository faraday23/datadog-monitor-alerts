variable "mssql_name" {
  description = "Specify name of DB you want to apply threshold to"
  type        = string
}

variable "new_host_delay" {
  description = "Time (in seconds) to allow a host to boot and applications to fully start before starting the evaluation of monitor results. Should be a non negative integer. Defaults to 300."
  type        = number
  default     = 300
}

variable "notify_no_data" {
  description = "A boolean indicating whether this monitor will notify when data stops reporting"
  type        = bool
  default     = true
}

variable "session_percent_time_aggregator" {
  description = "Monitor aggregator for mssql session percent [available values: min, max or avg]"
  type        = string
  default     = "avg"
}

variable "session_percent_timeframe" {
  description = "Monitor timeframe for mssql session percent [available values: `last_#m` (1, 5, 10, 15, or 30), `last_#h` (1, 2, or 4), or `last_1d`]"
  type        = string
  default     = "last_5m"
}

variable "session_percent_threshold_critical" {
  description = "mssql session percent(critical threshold)"
  type        = number
  default     = "90"
}

variable "session_percent_alert_type" {
  description = "The type of the monitor. Choices are: metric alert, service alert, event alert, query alert, composite, log alert"
  type        = string
  default     = "metric alert"
}

#A message to include with notifications for this monitor.
#Email notifications can be sent to specific users by using the same '@username' notation as events.
variable "session_percent_message" {
  description = "Custom message for mssql session percent monitor. "
  type        = string
  default     = "Session percent threshold has been triggered on {{host.name}}  @all"
}

#A message to include with a re-notification.
#Email notifications can be sent to specific users by using the same '@username' notation as events.
variable "session_percent_escalation_message" {
  description = "Escalation notification email, hipchat or slack user/channel"
  type        = string
  default     = "Session percent threshold has been triggered on {{host.name}} and has not been resolved @all"
}

variable "session_percent_renotify_interval" {
  description = "The number of minutes after the last notification before a monitor will re-notify"
  type        = number
  default     = 0
}

variable "session_percent_enable" {
  description = "Toggle to enable session percent monitoring"
  type        = bool
  default     = true
}

variable "workers_percent_time_aggregator" {
  description = "Monitor aggregator for mssql workers percent [available values: min, max or avg]"
  type        = string
  default     = "avg"
}

variable "workers_percent_timeframe" {
  description = "Monitor timeframe for mssql workers percent [available values: `last_#m` (1, 5, 10, 15, or 30), `last_#h` (1, 2, or 4), or `last_1d`]"
  type        = string
  default     = "last_5m"
}

variable "workers_percent_threshold_critical" {
  description = "mssql workers percent(critical threshold)"
  type        = number
  default     = "90"
}

variable "workers_percent_alert_type" {
  description = "The type of the monitor. Choices are: metric alert, service alert, event alert, query alert, composite, log alert"
  type        = string
  default     = "metric alert"
}

#A message to include with notifications for this monitor.
#Email notifications can be sent to specific users by using the same '@username' notation as events.
variable "workers_percent_message" {
  description = "Custom message for mssql workers percent monitor. "
  type        = string
  default     = "Workers percent threshold has been triggered on {{host.name}}  @all"
}

#A message to include with a re-notification.
#Email notifications can be sent to specific users by using the same '@username' notation as events.
variable "workers_percent_escalation_message" {
  description = "Escalation notification email, hipchat or slack user/channel"
  type        = string
  default     = "workers percent threshold has been triggered on {{host.name}} and has not been resolved @all"
}

variable "workers_renotify_interval" {
  description = "The number of minutes after the last notification before a monitor will re-notify"
  type        = number
  default     = 0
}

variable "workers_percent_enable" {
  description = "Toggle to enable workers percent monitoring"
  type        = bool
  default     = true
}

variable "storage_usage_time_aggregator" {
  description = "Monitor aggregator for mssql Storage [available values: min, max or avg]"
  type        = string
  default     = "avg"
}

variable "storage_usage_timeframe" {
  description = "Monitor timeframe for mssql Storage [available values: `last_#m` (1, 5, 10, 15, or 30), `last_#h` (1, 2, or 4), or `last_1d`]"
  type        = string
  default     = "last_5m"
}

variable "storage_usage_threshold_critical" {
  description = "mssql storage usage in percent (critical threshold)"
  type        = number
  default     = "95"
}

variable "storage_alert_type" {
  description = "The type of the monitor. Choices are: metric alert, service alert, event alert, query alert, composite, log alert"
  type        = string
  default     = "metric alert"
}

#A message to include with notifications for this monitor.
#Email notifications can be sent to specific users by using the same '@username' notation as events.
variable "storage_usage_message" {
  description = "Custom message for mssql storage monitor. "
  type        = string
  default     = "Storage threshold has been triggered on {{host.name}}  @all"
}

#A message to include with a re-notification.
#Email notifications can be sent to specific users by using the same '@username' notation as events.
variable "storage_escalation_message" {
  description = "Escalation notification email, hipchat or slack user/channel"
  type        = string
  default     = "Storage threshold has been triggered on {{host.name}} and has not been resolved @all"
}

variable "storage_renotify_interval" {
  description = "The number of minutes after the last notification before a monitor will re-notify"
  type        = number
  default     = 0
}

variable "storage_enable" {
  description = "Toggle to enable storage monitoring"
  type        = bool
  default     = true
}

variable "xtp_storage_time_aggregator" {
  description = "Monitor aggregator for mssql XTP Storage [available values: min, max or avg]"
  type        = string
  default     = "avg"

}

variable "xtp_storage_timeframe" {
  description = "Monitor timeframe for mssql XTP Storage [available values: `last_#m` (1, 5, 10, 15, or 30), `last_#h` (1, 2, or 4), or `last_1d`]"
  type        = string
  default     = "last_5m"
}

variable "xtp_storage_threshold_critical" {
  description = "mssql xtp storage usage in percent (critical threshold)"
  type        = number
  default     = "95"
}

variable "xtp_storage_alert_type" {
  description = "The type of the monitor. Choices are: metric alert, service alert, event alert, query alert, composite, log alert"
  type        = string
  default = "metric alert"
}

#A message to include with notifications for this monitor.
#Email notifications can be sent to specific users by using the same '@username' notation as events.
variable "xtp_storage_message" {
  description = "Custom message for mssql xtp storage monitor. "
  type        = string
  default     = "XTP storage threshold has been triggered on {{host.name}} @all"
}

#A message to include with a re-notification.
#Email notifications can be sent to specific users by using the same '@username' notation as events.
variable "xtp_storage_escalation_message" {
  description = "Escalation notification email, hipchat or slack user/channel"
  type        = string
  default     = "XTP storage threshold has been triggered on {{host.name}} and has not been resolved @all"
}

variable "xtp_storage_renotify_interval" {
  description = "The number of minutes after the last notification before a monitor will re-notify"
  type        = number
  default     = 0
}

variable "xtp_storage_enable" {
  description = "Toggle to enable serverlog storage monitoring"
  type        = bool
  default     = true
}

variable "memory_usage_time_aggregator" {
  description = "Monitor aggregator for mssql Memory [available values: min, max or avg]"
  type        = string
  default     = "avg"
}

variable "memory_usage_timeframe" {
  description = "Monitor timeframe for mssql Memory [available values: `last_#m` (1, 5, 10, 15, or 30), `last_#h` (1, 2, or 4), or `last_1d`]"
  type        = string
  default     = "last_5m"
}

variable "memory_usage_threshold_critical" {
  description = "mssql memory usage in percent (critical threshold)"
  type        = number
  default     = "95"
}

variable "memory_alert_type" {
  description = "The type of the monitor. Choices are: metric alert, service alert, event alert, query alert, composite, log alert"
  type        = string
  default     = "metric alert"
}

#A message to include with notifications for this monitor.
#Email notifications can be sent to specific users by using the same '@username' notation as events.
variable "memory_usage_message" {
  description = "Custom message for mssql memory monitor. "
  type        = string
  default     = "Memory threshold has been triggered on {{host.name}} @all"
}

#A message to include with a re-notification.
#Email notifications can be sent to specific users by using the same '@username' notation as events.
variable "memory_escalation_message" {
  description = "Escalation notification email, hipchat or slack user/channel"
  type        = string
  default     = "Memory threshold has been triggered on {{host.name}} @all and has not been resolved"
}

variable "memory_renotify_interval" {
  description = "The number of minutes after the last notification before a monitor will re-notify"
  type        = number
  default     = 0
}

variable "memory_enable" {
  description = "Toggle to enable memory monitoring"
  type        = bool
  default     = true
}

variable "blocked_connections_time_aggregator" {
  description = "Monitor aggregator for mssql blocked connections[available values: min, max or avg]"
  type        = string
  default     = "avg"

}

variable "blocked_connections_timeframe" {
  description = "Monitor timeframe for mssql blocked connections[available values: `last_#m` (1, 5, 10, 15, or 30), `last_#h` (1, 2, or 4), or `last_1d`]"
  type        = string
  default     = "last_5m"
}

variable "blocked_connections_threshold_critical" {
  description = "mssql blocked connections(critical threshold)"
  type        = number
  default     = "95"
}

variable "blocked_connections_alert_type" {
  description = "The type of the monitor. Choices are: metric alert, service alert, event alert, query alert, composite, log alert"
  type        = string
  default = "metric alert"
}

#A message to include with notifications for this monitor.
#Email notifications can be sent to specific users by using the same '@username' notation as events.
variable "blocked_connections_message" {
  description = "Custom message for mssql blocked connections monitor. "
  type        = string
  default     = "Blocked connections threshold has been triggered on {{host.name}} @all"
}

#A message to include with a re-notification.
#Email notifications can be sent to specific users by using the same '@username' notation as events.
variable "blocked_connections_escalation_message" {
  description = "Escalation notification email, hipchat or slack user/channel"
  type        = string
  default     = "Blocked connections threshold has been triggered on {{host.name}} @all and has not been resolved"
}

variable "blocked_connections_renotify_interval" {
  description = "The number of minutes after the last notification before a monitor will re-notify"
  type        = number
  default     = 0
}

variable "blocked_connections_enable" {
  description = "Toggle to enable blocked connections monitoring"
  type        = bool
  default     = true
}

variable "deadlock_time_aggregator" {
  description = "Monitor aggregator for mssql deadlock[available values: min, max or avg]"
  type        = string
  default     = "avg"

}

variable "deadlock_timeframe" {
  description = "Monitor timeframe for mssql deadlock[available values: `last_#m` (1, 5, 10, 15, or 30), `last_#h` (1, 2, or 4), or `last_1d`]"
  type        = string
  default     = "last_5m"
}

variable "deadlock_threshold_critical" {
  description = "mssql deadlock(critical threshold)"
  type        = number
  default     = "95"
}

variable "deadlock_alert_type" {
  description = "The type of the monitor. Choices are: metric alert, service alert, event alert, query alert, composite, log alert"
  type        = string
  default = "metric alert"
}

#A message to include with notifications for this monitor.
#Email notifications can be sent to specific users by using the same '@username' notation as events.
variable "deadlock_message" {
  description = "Custom message for mssql deadlock monitor. "
  type        = string
  default     = "Deadlock threshold has been triggered on {{host.name}} @all"
}

#A message to include with a re-notification.
#Email notifications can be sent to specific users by using the same '@username' notation as events.
variable "deadlock_escalation_message" {
  description = "Escalation notification email, hipchat or slack user/channel"
  type        = string
  default     = "Blocked connections threshold has been triggered on {{host.name}} @all and has not been resolved"
}

variable "deadlock_renotify_interval" {
  description = "The number of minutes after the last notification before a monitor will re-notify"
  type        = number
  default     = 0
}

variable "deadlock_enable" {
  description = "Toggle to enable deadlock monitoring"
  type        = bool
  default     = true
}

variable "failed_connections_time_aggregator" {
  description = "Monitor aggregator for mssql failed connections [available values: min, max or avg]"
  type        = string
}

variable "failed_connections_timeframe" {
  description = "Monitor timeframe for mssql failed Connections [available values: `last_#m` (1, 5, 10, 15, or 30), `last_#h` (1, 2, or 4), or `last_1d`]"
  type        = string
  default     = "last_5m"
}

variable "failed_connections_threshold_critical" {
  description = "mssql failed connections in count (critical threshold)"
  type        = number
  default     = "95"
}

variable "failed_connections_alert_type" {
  description = "The type of the monitor. Choices are: metric alert, service alert, event alert, query alert, composite, log alert"
  type        = string
  default     = "metric alert"
}

#A message to include with notifications for this monitor.
#Email notifications can be sent to specific users by using the same '@username' notation as events.
variable "failed_connections_message" {
  description = "Custom message for mssql storage monitor. "
  type        = string
  default     = "Failed connections threshold has been triggered on {{host.name}} @all"
}

#A message to include with a re-notification.
#Email notifications can be sent to specific users by using the same '@username' notation as events.
variable "failed_connections_escalation_message" {
  description = "Escalation notification email, hipchat or slack user/channel"
  type        = string
  default     = "Failed connections threshold has been triggered on {{host.name}} @all and has not been resolved"
}

variable "failed_connections_renotify_interval" {
  description = "The number of minutes after the last notification before a monitor will re-notify"
  type        = number
  default     = 0
}

variable "failed_connection_enable" {
  description = "Toggle to enable failed connections monitoring"
  type        = bool
  default     = true
}

variable "cpu_time_aggregator" {
  description = "Monitor aggregator for mssql CPU [available values: min, max or avg]"
  type        = string
  default     = "min"
}

variable "cpu_timeframe" {
  description = "Monitor timeframe for mssql CPU [available values: `last_#m` (1, 5, 10, 15, or 30), `last_#h` (1, 2, or 4), or `last_1d`]"
  type        = string
  default     = "last_5m"
}

variable "cpu_threshold_critical" {
  description = "mssql CPU in percent (critical threshold)"
  type        = number
  default     = "95"
}

variable "cpu_alert_type" {
  description = "The type of the monitor. Choices are: metric alert, service alert, event alert, query alert, composite, log alert"
  type        = string
  default     = "metric alert"
}

#A message to include with notifications for this monitor.
#Email notifications can be sent to specific users by using the same '@username' notation as events.
variable "cpu_message" {
  description = "Custom message for mssql CPU monitor."
  type        = string
  default     = "CPU threshold has been triggered on {{host.name}} @all"
}

#A message to include with a re-notification.
#Email notifications can be sent to specific users by using the same '@username' notation as events.
variable "cpu_escalation_message" {
  description = "Escalation notification email, hipchat or slack user/channel"
  type        = string
  default     = "Memory threshold has been triggered on {{host.name}} @all and has not been resolved"
}

variable "cpu_renotify_interval" {
  description = "The number of minutes after the last notification before a monitor will re-notify"
  type        = number
  default     = 0
}

variable "cpu_enable" {
  description = "Toggle to enable cpu monitoring"
  type        = bool
  default     = true
}

variable "active_connections_time_aggregator" {
  description = "Monitor aggregator for mssql active connections [available values: min, max or avg]"
  type        = string
  default     = "sum"
}

variable "active_connections_timeframe" {
  description = "Monitor timeframe for mssql active connections [available values: `last_#m` (1, 5, 10, 15, or 30), `last_#h` (1, 2, or 4), or `last_1d`]"
  type        = string
  default     = "last_5m"
}

variable "active_connections_threshold_critical" {
  description = "mssql active connections usage in percent (critical threshold)"
  type        = number
  default     = "80"
}

variable "active_connections_alert_type" {
  description = "The type of the monitor. Choices are: metric alert, service alert, event alert, query alert, composite, log alert"
  type        = string
  default     = "metric alert"
}

#A message to include with notifications for this monitor.
#Email notifications can be sent to specific users by using the same '@username' notation as events.
variable "active_connections_message" {
  description = "Custom message for mssql active connections monitor. "
  type        = string
  default     = "Active connections threshold has been triggered on {{host.name}} @all"
}

#A message to include with a re-notification.
#Email notifications can be sent to specific users by using the same '@username' notation as events.
variable "active_connections_escalation_message" {
  description = "Escalation notification email, hipchat or slack user/channel"
  type        = string
  default     = "Active connections threshold has been triggered on {{host.name}} @all and has not been resolved"
}

variable "active_connections_renotify_interval" {
  description = "The number of minutes after the last notification before a monitor will re-notify"
  type        = number
  default     = 0
}

variable "active_connections_enable" {
  description = "Toggle to enable active connections monitoring"
  type        = bool
  default     = true
}

variable "status_time_aggregator" {
  description = "Monitor aggregator for mssql status [available values: min, max or avg]"
  type        = string
  default     = "sum"
}

variable "status_timeframe" {
  description = "Monitor timeframe for mssql status [available values: `last_#m` (1, 5, 10, 15, or 30), `last_#h` (1, 2, or 4), or `last_1d`]"
  type        = string
  default     = "last_5m"
}

variable "status_threshold_critical" {
  description = "mssql status (critical threshold)"
  type        = number
  default     = "80"
}

variable "status_alert_type" {
  description = "The type of the monitor. Choices are: metric alert, service alert, event alert, query alert, composite, log alert"
  type        = string
  default     = "metric alert"
}

#A message to include with notifications for this monitor.
#Email notifications can be sent to specific users by using the same '@username' notation as events.
variable "status_message" {
  description = "Custom message for mssql status monitor. "
  type        = string
  default     = "Status threshold has been triggered on {{host.name}} @all"
}

#A message to include with a re-notification.
#Email notifications can be sent to specific users by using the same '@username' notation as events.
variable "status_escalation_message" {
  description = "Escalation notification email, hipchat or slack user/channel"
  type        = string
  default     = "Status threshold has been triggered on {{host.name}} @all and has not been resolved"
}

variable "status_renotify_interval" {
  description = "The number of minutes after the last notification before a monitor will re-notify"
  type        = number
  default     = 0
}

variable "status_enable" {
  description = "Toggle to enable status monitoring"
  type        = bool
  default     = true
}

variable "tags" {
  description = "A list of tags to assign to each resource created by this module"
  type        = list(string)
  default     = []
}
