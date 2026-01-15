output "eventBusArn" {
  value = aws_cloudwatch_event_bus.customEventBus.arn
}

output "eventRuleArn" {
  value = aws_cloudwatch_event_rule.telemetryRule.arn
}
