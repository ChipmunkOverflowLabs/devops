output "pubSubTopicId" {
  value = google_pubsub_topic.telemetryTopic.id
}

output "pubSubSubscriptionId" {
  value = google_pubsub_subscription.telemetrySubscription.id
}
