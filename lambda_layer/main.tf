resource "aws_lambda_layer_version" "shared_code_layer" {
  layer_name = var.layer_name
  s3_bucket  = var.s3_bucket
  s3_key     = var.s3_key
  compatible_runtimes = ["python3.10"]
}
