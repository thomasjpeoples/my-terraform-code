resource "aws_lambda_function" "lambda_function" {
  function_name    = var.lambda_function_name
  handler          = var.lambda_handler
  runtime          = var.lambda_runtime
  role             = var.lambda_role_arn
  filename         = var.lambda_zip_file
  source_code_hash = filebase64sha256(var.lambda_zip_file)
}
