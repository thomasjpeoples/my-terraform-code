data "archive_file" "code_zip" {
  type        = "zip"
  source_dir  = var.code_file_path
  output_path = "${path.module}/code.zip"
}

resource "aws_s3_bucket_object" "code_upload" {
  bucket         = var.bucket_name
  key            = var.s3_key
  source         = data.archive_file.code_zip.output_path
  etag           = filebase64sha256(data.archive_file.code_zip.output_path)
}
