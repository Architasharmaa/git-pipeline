variable "new_relic_infra_alerts"{
    type = any 
}
variable "sli"{
type = any
}
variable "workflow"{
type = any
}
variable "notification_channel" {
  type = any
}
variable "destination"{
    type = any
}
variable "policy_name" {
  type  = any 
}
variable "newrelic_account_id" {
  description = "The New Relic account ID"
  type        = string
}

variable "newrelic_api_key" {
  description = "The New Relic API key"
  type        = string
  sensitive   = true
}

