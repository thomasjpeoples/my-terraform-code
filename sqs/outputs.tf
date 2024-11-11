output "sqs_queue_url" {
  value = aws_sqs_queue.main_queue.url
}

output "sqs_dlq_url" {
  value = aws_sqs_queue.dlq.url
}

output "queue_arn" {
  value = aws_sqs_queue.main_queue.arn
}

output "dlq_arn" {
  value = aws_sqs_queue.dlq.arn
}
