#Monitor for the the MSSQL Server active connections usage.
resource "datadog_monitor" "mssql_active_connections_usage" {
  count   = var.active_connections_enable ? 1 :0
  name    = "MSSQL Server active connections alert for ${var.mssql_name}"
  type    = var.active_connections_alert_type
  message = <<EOM
    Active Connections usage high: {{value}} on {{host.name}}

    ${var.active_connections_message}
  EOM
  query = <<EOQ
    ${var.active_connections_time_aggregator}(${var.active_connections_timeframe}): (avg:azure.sql_servers_databases.connection_successful{name:${var.mssql_name}} by {name}.as_count()) >= ${var.active_connections_threshold_critical}
  EOQ

  escalation_message  = var.active_connections_escalation_message
  new_host_delay      = var.new_host_delay
  notify_no_data      = var.notify_no_data
  renotify_interval   = var.active_connections_renotify_interval
  notify_audit        = false
  include_tags        = true
  #A boolean indicating whether this monitor needs a full window of data before it's evaluated.
  #Recommend to set this to False for sparse metrics, otherwise some evaluations will be skipped.
  #Default: True for "on average", "at all times" and "in total" aggregation. False otherwise.
  require_full_window = false

  tags = var.tags
}

#Monitor for the the MSSQL Server CPU usage.
resource "datadog_monitor" "mssql_cpu_usage" {
  count   = var.cpu_enable ? 1 : 0
  name    = "MSSQL Server CPU alert for ${var.mssql_name} "
  type    = var.cpu_alert_type
  message = <<EOM
    CPU usage high: {{value}} on {{host.name}}

    ${var.cpu_message}
  EOM
  query = <<EOQ
    ${var.cpu_time_aggregator}(${var.cpu_timeframe}): (avg:azure.sql_servers_databases.app_cpu_percentage{name:${var.mssql_name}} by {name}) == ${var.cpu_threshold_critical}
  EOQ

  escalation_message  = var.cpu_escalation_message
  new_host_delay      = var.new_host_delay
  notify_no_data      = var.notify_no_data
  renotify_interval   = var.cpu_renotify_interval
  notify_audit        = false
  include_tags        = true
  #A boolean indicating whether this monitor needs a full window of data before it's evaluated.
  #Recommend to set this to False for sparse metrics, otherwise some evaluations will be skipped.
  #Default: True for "on average", "at all times" and "in total" aggregation. False otherwise.
  require_full_window = true

  tags = var.tags
}

#Monitor for the the MSSQL failed connections.
resource "datadog_monitor" "mssql_failed_connections" {
  count   = var.failed_connection_enable ? 1 : 0
  name    = "MSSQL failed connections alert for ${var.mssql_name}"
  type    = var.failed_connections_alert_type
  message = <<EOM
    Failed connections high: {{value}} on {{host.name}}

    ${var.failed_connections_message}
  EOM
  query = <<EOQ
    ${var.failed_connections_time_aggregator}(${var.failed_connections_timeframe}): (sum:azure.sql_servers_databases.connection_failed{name:${var.mssql_name}} by {name}.as_count()) >= ${var.failed_connections_threshold_critical}
  EOQ

  escalation_message  = var.failed_connections_escalation_message
  new_host_delay      = var.new_host_delay
  notify_no_data      = var.notify_no_data
  renotify_interval   = var.failed_connections_renotify_interval
  notify_audit        = false
  include_tags        = true
  #A boolean indicating whether this monitor needs a full window of data before it's evaluated.
  #Recommend to set this to False for sparse metrics, otherwise some evaluations will be skipped.
  #Default: True for "on average", "at all times" and "in total" aggregation. False otherwise.
  require_full_window = false

  tags = var.tags
}

#Monitor for the the MSSQL Server blocked firewall connections.
resource "datadog_monitor" "mssql_blocked_connections" {
  count   = var.blocked_connections_enable ? 1 : 0
  name    = "MSSQL Server blocked connections by firewall alert for ${var.mssql_name}"
  type    = var.blocked_connections_alert_type
  message = <<EOM
    IO usage high: {{value}} on {{host.name}}

    ${var.blocked_connections_message}
  EOM
  query = <<EOQ
    ${var.blocked_connections_time_aggregator}(${var.blocked_connections_timeframe}): (sum:azure.sql_servers_databases.blocked_by_firewall{name:${var.mssql_name}} by {name}.as_count()) >= ${var.blocked_connections_threshold_critical}
  EOQ

  escalation_message  = var.blocked_connections_escalation_message
  new_host_delay      = var.new_host_delay
  notify_no_data      = var.notify_no_data
  renotify_interval   = var.blocked_connections_renotify_interval
  notify_audit        = false
  include_tags        = true
  #A boolean indicating whether this monitor needs a full window of data before it's evaluated.
  #Recommend to set this to False for sparse metrics, otherwise some evaluations will be skipped.
  #Default: True for "on average", "at all times" and "in total" aggregation. False otherwise.
  require_full_window = true

  tags = var.tags
}

#Monitor for the the MSSQL Server deadlock.
resource "datadog_monitor" "mssql_deadlock" {
  count   = var.deadlock_enable ? 1 : 0
  name    = "MSSQL Server deadlock alert for ${var.mssql_name}"
  type    = var.deadlock_alert_type
  message = <<EOM
    Deadlock usage high: {{value}} on {{host.name}}

    ${var.deadlock_message}
  EOM
  query = <<EOQ
    ${var.deadlock_time_aggregator}(${var.deadlock_timeframe}): (sum:azure.sql_servers_databases.deadlock{name:${var.mssql_name}} by {name}.as_count()) >= ${var.deadlock_threshold_critical}
  EOQ

  escalation_message  = var.deadlock_escalation_message
  new_host_delay      = var.new_host_delay
  notify_no_data      = var.notify_no_data
  renotify_interval   = var.deadlock_renotify_interval
  notify_audit        = false
  include_tags        = true
  #A boolean indicating whether this monitor needs a full window of data before it's evaluated.
  #Recommend to set this to False for sparse metrics, otherwise some evaluations will be skipped.
  #Default: True for "on average", "at all times" and "in total" aggregation. False otherwise.
  require_full_window = true

  tags = var.tags
}

#Monitor for the the MSSQL Server memory usage.
resource "datadog_monitor" "mssql_memory_usage" {
  count   = var.memory_enable ? 1 : 0
  name    = "MSSQL Server memory usage alert for ${var.mssql_name}"
  type    = var.memory_alert_type
  message = <<EOM
    Memory usage high: {{value}} on {{host.name}}

    ${var.memory_usage_message}
  EOM
  query = <<EOQ
    ${var.memory_usage_time_aggregator}(${var.memory_usage_timeframe}): (avg:azure.sql_servers_databases.sql_server_process_memory_percent{name:${var.mssql_name}} by {name}) == ${var.memory_usage_threshold_critical}
  EOQ

  escalation_message  = var.memory_escalation_message
  new_host_delay      = var.new_host_delay
  notify_no_data      = var.notify_no_data
  renotify_interval   = var.memory_renotify_interval
  notify_audit        = false
  include_tags        = true
  #A boolean indicating whether this monitor needs a full window of data before it's evaluated.
  #Recommend to set this to False for sparse metrics, otherwise some evaluations will be skipped.
  #Default: True for "on average", "at all times" and "in total" aggregation. False otherwise.
  require_full_window = true

  tags = var.tags
}

#Monitor for the the MSSQL Server XTP storage Percent Used.
resource "datadog_monitor" "mssql_xtp_storage_percent" {
  count   = var.xtp_storage_enable ? 1 : 0
  name    = "MSSQL xtp storage percent used alert for ${var.mssql_name}"
  type    = var.xtp_storage_alert_type
  message = <<EOM
    XTP Storage usage high: {{value}} on {{host.name}}

    ${var.xtp_storage_message}
  EOM
  query = <<EOQ
    ${var.xtp_storage_time_aggregator}(${var.xtp_storage_timeframe}): (avg:azure.sql_servers_databases.tempdb_percent_log_used{name:${var.mssql_name}} by {name,resource_group,region}) > ${var.xtp_storage_threshold_critical}
  EOQ

  escalation_message  = var.xtp_storage_escalation_message
  new_host_delay      = var.new_host_delay
  notify_no_data      = var.notify_no_data
  renotify_interval   = var.xtp_storage_renotify_interval
  notify_audit        = false
  include_tags        = true
  #A boolean indicating whether this monitor needs a full window of data before it's evaluated.
  #Recommend to set this to False for sparse metrics, otherwise some evaluations will be skipped.
  #Default: True for "on average", "at all times" and "in total" aggregation. False otherwise.
  require_full_window = true

  tags = var.tags
}

#Monitor for the the MS SQL Server storage usage.
resource "datadog_monitor" "mssql_storage_usage" {
  count   = var.storage_enable ? 1 : 0
  name = "MSSQL Server storage usage alert for ${var.mssql_name}"
  type  = var.storage_alert_type
  message = <<EOM
    Storage usage high: {{value}} on {{host.name}}

    ${var.storage_usage_message}
  EOM
  query = <<EOQ
    ${var.storage_usage_time_aggregator}(${var.storage_usage_timeframe}): (avg:azure.sql_servers_databases.storage_percent{name:${var.mssql_name}} by {name}) > ${var.storage_usage_threshold_critical}
  EOQ

  escalation_message  = var.storage_escalation_message
  new_host_delay      = var.new_host_delay
  notify_no_data      = var.notify_no_data
  renotify_interval   = var.storage_renotify_interval
  notify_audit        = false
  include_tags        = true
  #A boolean indicating whether this monitor needs a full window of data before it's evaluated.
  #Recommend to set this to False for sparse metrics, otherwise some evaluations will be skipped.
  #Default: True for "on average", "at all times" and "in total" aggregation. False otherwise.
  require_full_window = true

  tags = var.tags
}

#Monitor for the the MS SQL Server Session percent.
resource "datadog_monitor" "mssql_session_percent" {
  count   = var.session_percent_enable ? 1 : 0
  name = "MSSQL session percent alert for ${var.mssql_name}"
  type  = var.session_percent_alert_type
  message = <<EOM
    Session percentage alert: {{value}} on {{host.name}}

    ${var.session_percent_message}
  EOM
  query = <<EOQ
    ${var.session_percent_time_aggregator}(${var.session_percent_timeframe}): (avg:azure.sql_servers_databases.sessions_percent{name:${var.mssql_name}} by {name}) > ${var.session_percent_threshold_critical}
  EOQ

  escalation_message  = var.session_percent_escalation_message
  new_host_delay      = var.new_host_delay
  notify_no_data      = var.notify_no_data
  renotify_interval   = var.session_percent_renotify_interval
  notify_audit        = false
  include_tags        = true
  #A boolean indicating whether this monitor needs a full window of data before it's evaluated.
  #Recommend to set this to False for sparse metrics, otherwise some evaluations will be skipped.
  #Default: True for "on average", "at all times" and "in total" aggregation. False otherwise.
  require_full_window = true

  tags = var.tags
}

#Monitor for the the MS SQL Server workers percent.
resource "datadog_monitor" "mssql_workers_percent" {
  count   = var.workers_percent_enable ? 1 : 0
  name = "MSSQL workers percent alert for ${var.mssql_name}"
  type  = var.workers_percent_alert_type
  message = <<EOM
    Workers percentage alert: {{value}} on {{host.name}}

    ${var.workers_percent_message}
  EOM
  query = <<EOQ
    ${var.workers_percent_time_aggregator}(${var.workers_percent_timeframe}): (avg:azure.sql_servers_databases.workers_percent{name:${var.mssql_name}} by {name}) > ${var.workers_percent_threshold_critical}
  EOQ

  escalation_message  = var.workers_percent_escalation_message
  new_host_delay      = var.new_host_delay
  notify_no_data      = var.notify_no_data
  renotify_interval   = var.workers_renotify_interval
  notify_audit        = false
  include_tags        = true
  #A boolean indicating whether this monitor needs a full window of data before it's evaluated.
  #Recommend to set this to False for sparse metrics, otherwise some evaluations will be skipped.
  #Default: True for "on average", "at all times" and "in total" aggregation. False otherwise.
  require_full_window = true

  tags = var.tags
}

#Monitor for the the MS SQL Status.
resource "datadog_monitor" "mssql_status" {
  count   = var.status_enable ? 1 : 0
  name = "MSSQL status alert for ${var.mssql_name}"
  type  = var.status_alert_type
  message = <<EOM
    Status alert: {{value}} on {{host.name}}

    ${var.status_message}
  EOM
  query = <<EOQ
    ${var.status_time_aggregator}(${var.status_timeframe}): (avg:azure.sql_servers_databases.status{name:${var.mssql_name}} by {name}) > ${var.status_threshold_critical}
  EOQ

  escalation_message  = var.status_escalation_message
  new_host_delay      = var.new_host_delay
  notify_no_data      = var.notify_no_data
  renotify_interval   = var.status_renotify_interval
  notify_audit        = false
  include_tags        = true
  #A boolean indicating whether this monitor needs a full window of data before it's evaluated.
  #Recommend to set this to False for sparse metrics, otherwise some evaluations will be skipped.
  #Default: True for "on average", "at all times" and "in total" aggregation. False otherwise.
  require_full_window = true

  tags = var.tags
}
