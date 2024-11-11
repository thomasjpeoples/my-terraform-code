output "sqs_queue_url" {
  value = aws_sqs_queue.main_queue.url
}

output "sqs_dlq_url" {
  value = aws_sqs_queue.dlq.url
}
