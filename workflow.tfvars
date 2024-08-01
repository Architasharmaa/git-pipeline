notification_channel = {
    name = "email-example"
    type  = "EMAIL"
    # destination_id = newrelic_notification_destination.foo88.id
    product = "IINT"
    property1 = {
        key = "subject"
        value = "New Subject Title"
    }
    property2 = {
        key = "customDetailsEmail"
        value = "issue id - {{issueId}}"
    }
}
destination = {
  name = "email-example"
  type = "EMAIL"
   property = {
    key = "email"
    value = "architamoudgills@gmail.com"
  }
}
workflow = {
   name = "nnnnn"
  muting_rules_handling = "NOTIFY_ALL_ISSUES"

  issues_filter ={
    name = "filter-name"
    type = "FILTER"

    predicate = {
      attribute = "accumulations.tag.team"
      operator = "EXACTLY_MATCHES"
      values = ["g5494855"]
    }
  }

  # destination ={
  #   channel_id = newrelic_notification_channel.foo.id
  # } 
}