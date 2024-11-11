resource "aws_sqs_queue" "main_queue" {
  name                      = var.sqs_queue_name
  delay_seconds             = var.sqs_delay_seconds
  max_message_size          = var.sqs_max_message_size
  message_retention_seconds = var.sqs_message_retention_seconds
  receive_wait_time_seconds = var.sqs_receive_wait_time_seconds

  redrive_policy = jsonencode({
    maxReceiveCount     = var.sqs_max_receive_count
    deadLetterTargetArn = aws_sqs_queue.dlq.arn
  })
}

resource "aws_sqs_queue" "dlq" {
  name = var.sqs_dlq_name
}

# SQS Policy for the S3 Notification
resource "aws_sqs_queue_policy" "sqs" {
  queue_url = aws_sqs_queue.main_queue.id

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Sid      = "AllowS3Notification"
        Effect   = "Allow",
        Action   = "SQS:SendMessage",
        Resource = aws_sqs_queue.main_queue.arn,
        Principal = {
          Service = "s3.amazonaws.com"
        },     
        Condition = {
          ArnLike : {
            "aws:SourceArn" :var.bucket_arn
          }
        }
      }
    ]
  })
}
