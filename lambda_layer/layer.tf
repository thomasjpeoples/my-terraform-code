# my-terraform-code/lambda_layer/variables.tf
variable "layer_name" {
  description = "Name of the Lambda layer"
}

variable "s3_bucket" {
  description = "S3 bucket name for the Lambda layer zip"
}

variable "s3_key" {
  description = "S3 key for the Lambda layer zip"
}

# my-terraform-code/lambda_layer/layer.tf
resource "aws_lambda_layer_version" "shared_code_layer" {
  layer_name = var.layer_name
  s3_bucket  = var.s3_bucket
  s3_key     = var.s3_key
  compatible_runtimes = ["python3.10"]
}

output "layer_arn" {
  value = aws_lambda_layer_version.shared_code_layer.arn
}