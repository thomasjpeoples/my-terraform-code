# Module to upload a single file to an S3 bucket
resource "aws_s3_bucket_object" "file_upload" {
  bucket       = var.bucket_name
  key          = "${var.s3_prefix}/${basename(var.file_path)}"
  source       = var.file_path
  etag         = filebase64sha256(var.file_path)
  content_type = var.content_type
}
