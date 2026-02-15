resource "google_pubsub_topic" "telemetryTopic" {
  name = var.pubSubTopicName
}

resource "google_pubsub_subscription" "telemetrySubscription" {
  name  = var.subscriptionName
  topic = google_pubsub_topic.telemetryTopic.name

  ack_deadline_seconds = 20
}
