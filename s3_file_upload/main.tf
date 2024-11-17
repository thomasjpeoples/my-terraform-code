# Upload a file to S3 (generic for any file type)

resource "aws_s3_bucket_object" "file_upload" {
  bucket = var.bucket_name
  key    = var.s3_key
  source = var.file_path
  etag   = filebase64sha256(var.file_path)
}