resource "aws_sns_topic" "alertsTopic" {
  name = var.snsTopicName
}

resource "aws_sns_topic_subscription" "alertsEmailSubscription" {
  topic_arn = aws_sns_topic.alertsTopic.arn
  protocol  = "email"
  endpoint  = var.subscriptionEndpoint
}
