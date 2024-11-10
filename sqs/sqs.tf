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
