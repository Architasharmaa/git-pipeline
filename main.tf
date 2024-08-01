module "task" {
  source = "./child_module"
  account_id = var.newrelic_account_id
  api_key = var.newrelic_api_key
  policy_name = var.policy_name
  workflow = var.workflow
  notification_channel = var.notification_channel
  new_relic_infra_alerts = var.new_relic_infra_alerts
  sli =var.sli
  destination = var.destination
}
