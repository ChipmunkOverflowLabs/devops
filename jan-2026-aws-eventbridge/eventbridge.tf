resource "aws_cloudwatch_event_bus" "customEventBus" {
  name = var.eventBusName
}

resource "aws_cloudwatch_event_rule" "telemetryRule" {
  name           = var.eventRuleName
  event_bus_name = aws_cloudwatch_event_bus.customEventBus.name
  event_pattern  = jsonencode({
    source      = [ "custom.billing" ]
    detail-type = [ "thresholdNotification" ]
  })
}

resource "aws_cloudwatch_event_target" "sqsTarget" {
  rule           = aws_cloudwatch_event_rule.telemetryRule.name
  event_bus_name = aws_cloudwatch_event_bus.customEventBus.name
  arn            = var.targetQueueArn
}
