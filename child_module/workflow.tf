resource "newrelic_notification_channel" "foo" {
  account_id = var.account_id
  name = var.notification_channel.name
  type = var.notification_channel.type
  destination_id = newrelic_notification_destination.foo88.id
  product =  var.notification_channel.product

  property {
    key = var.notification_channel.property1.key
    value = var.notification_channel.property1.value
  }

  property {
    key = var.notification_channel.property2.key
    value = var.notification_channel.property2.value
  }
}

resource "newrelic_notification_destination" "foo88" {
  account_id = var.account_id
  name = var.destination.name
  type = var.destination.type

  property {
    key = var.destination.property.key
    value = var.destination.property.value
  }
}
resource "newrelic_workflow" "nnn" {
  name = var.workflow.name
  muting_rules_handling = var.workflow.muting_rules_handling

  issues_filter {
    name = var.workflow.issues_filter.name
    type = var.workflow.issues_filter.type

    predicate {
      attribute = var.workflow.issues_filter.predicate.attribute
      operator = var.workflow.issues_filter.predicate.operator
      values = var.workflow.issues_filter.predicate.values
    }
  }

  destination {
    channel_id = newrelic_notification_channel.foo.id
  }
}