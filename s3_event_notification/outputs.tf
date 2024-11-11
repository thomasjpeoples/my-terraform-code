output "s3_event_notification" {
  value = aws_s3_bucket_notification.s3_to_sqs.bucket
}
