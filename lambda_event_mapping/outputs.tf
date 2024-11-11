output "event_mapping_id" {
  value = aws_lambda_event_source_mapping.sqs_trigger.id
}
