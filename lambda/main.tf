data "archive_file" "lambda_code" {
  type        = "zip"
  source_dir  = "./lambda"  # The directory containing your Lambda function code
  output_path = "${path.module}/lambda.zip"
}

resource "aws_lambda_function" "lambda_function" {
  function_name    = var.lambda_function_name
  handler          = var.lambda_handler
  runtime          = var.lambda_runtime
  role             = var.lambda_role_arn
  filename         = data.archive_file.lambda_code.output_path
  layers           = var.lambda_layers
  source_code_hash = filebase64sha256(data.archive_file.lambda_code.output_path)
}
