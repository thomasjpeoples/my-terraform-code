# SQS Trigger for Lambda
resource "aws_lambda_event_source_mapping" "sqs_trigger" {
  event_source_arn = var.sqs_queue.arn
  function_name    = var.lambda_function_name
  batch_size       = var.batch_size
  enabled          = var.enabled
}
