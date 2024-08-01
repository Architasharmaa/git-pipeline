new_relic_infra_alerts = {
    # policy_id = newrelic_alert_policy.workflow_policy.id
  name        = "High disk usage"
  description = "Warning if disk usage goes above 80% and critical alert if goes above 90%"
  type        = "infra_metric"
  event       = "StorageSample"
  select      = "diskUsedPercent"
  comparison  = "above"
  where       = "(hostname LIKE '%frontend%')"

  critical = {
    duration      = 25
    value         = 90
    time_function = "all"
  }

  warning = {
    duration      = 10
    value         = 80
    time_function = "all"
  }
}

policy_name = {
     name = "rudra"
}
