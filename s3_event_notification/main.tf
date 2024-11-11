# S3 Event Notification
resource "aws_s3_bucket_notification" "s3_to_sqs" {
  bucket = var.bucket_name

  queue {
    queue_arn     = var.queue_arn
    events        = var.events
    filter_suffix = var.file_suffix
    filter_prefix = var.bucket_prefix
  }
}
