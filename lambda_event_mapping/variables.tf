variable "batch_size" {
  description = "The volume of messages to send to Lambda at once"
  type        = number
  default     = 1
}

variable "enabled" {
  description = "Whether the event source mapping is enabled"
  type        = bool
  default     = true
}

variable "lambda_function_name" {
  description = "The name of the Lambda function"
  type        = string
}

variable "sqs_queue_arn" {
  description = "The ARN of the SQS queue to trigger Lambda"
  type        = string
}
