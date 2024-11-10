variable "sqs_queue_name" {
  description = "Name of the SQS main queue"
  type        = string
}

variable "sqs_dlq_name" {
  description = "Name of the SQS dead-letter queue (DLQ)"
  type        = string
}

variable "sqs_delay_seconds" {
  description = "Delay in seconds for message delivery"
  type        = number
  default     = 0
}

variable "sqs_max_message_size" {
  description = "Maximum message size in bytes"
  type        = number
  default     = 262144
}

variable "sqs_message_retention_seconds" {
  description = "Message retention period in seconds"
  type        = number
  default     = 345600
}

variable "sqs_receive_wait_time_seconds" {
  description = "Wait time for receiving messages"
  type        = number
  default     = 0
}

variable "sqs_max_receive_count" {
  description = "Maximum number of receives before sending to DLQ"
  type        = number
  default     = 1  # Single retry
}
