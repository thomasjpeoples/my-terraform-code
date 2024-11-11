variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
}

variable "events" {
  description = "The list of S3 events to trigger the notification"
  type        = list(string)
  default     = ["s3:ObjectCreated:*"]
}

variable "file_suffix" {
  description = "The extension of the file landing"
  type        = string
  default     = ".json"
}

variable "bucket_prefix" {
  description = "The folder where the file lands"
  type        = string
  default     = ""
}

variable "queue_arn" {
  description = "The ARN of the SQS queue to send notifications to"
  type        = string
}
