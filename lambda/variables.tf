variable "lambda_function_name" {
  description = "The name of the Lambda function"
  type        = string
}

variable "lambda_handler" {
  description = "The handler for the Lambda function"
  type        = string
}

variable "lambda_layers" {
  description = "The layers, or singular, for the Lambda function to use"
  type        = string
}

variable "lambda_runtime" {
  description = "The runtime for the Lambda function"
  type        = string
}

variable "lambda_role_arn" {
  description = "The ARN of the IAM role assumed by Lambda"
  type        = string
}

variable "lambda_zip_file" {
  description = "Path to the zipped Lambda function code"
  type        = string
}
