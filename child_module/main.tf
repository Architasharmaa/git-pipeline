resource "newrelic_alert_policy" "workflow_policy" {
  name = var.new_relic_infra_alerts.name
}

resource "newrelic_infra_alert_condition" "high_disk_usage" {
policy_id = newrelic_alert_policy.workflow_policy.id
  name        = var.new_relic_infra_alerts.name
  description = var.new_relic_infra_alerts.description
  type        = var.new_relic_infra_alerts.type
  event       = var.new_relic_infra_alerts.event
  select      = var.new_relic_infra_alerts.select
  comparison  = var.new_relic_infra_alerts.comparison
  where       = var.new_relic_infra_alerts.where

  critical {
    duration      = var.new_relic_infra_alerts.critical.duration
    value         = var.new_relic_infra_alerts.critical.value
    time_function = var.new_relic_infra_alerts.critical.time_function
  }

  warning {
    duration      = var.new_relic_infra_alerts.warning.duration
    value         = var.new_relic_infra_alerts.warning.value
    time_function = var.new_relic_infra_alerts.warning.time_function
  }
}
resource "newrelic_service_level" "new" {
    guid = var.sli.guid
    name = var.sli.name
    description = var.sli.description

    events {
        account_id = var.account_id
        valid_events {
            from = var.sli.events.valid_events.from
            where = var.sli.events.valid_events.where
        }
        good_events {
            from = var.sli.events.good_events.from
            where = var.sli.events.good_events.where
        }
    }

    objective {
        target = var.sli.objective.target
        time_window {
            rolling {
                count = var.sli.objective.rolling.count
                unit = var.sli.objective.rolling.unit
            }
        }
    }
}









