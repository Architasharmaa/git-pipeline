terraform {
  required_providers {
    newrelic = {
      source  = "newrelic/newrelic"
      version = "3.38.1"
    }
  }
}
provider "newrelic" {
  account_id = 4438277
  api_key    = "NRAK-E3GS6X7HIYRIFPH0Z6PAX2RRTW3"
}
