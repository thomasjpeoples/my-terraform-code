# Module to upload a single file to an S3 bucket
resource "aws_s3_bucket_object" "file_upload" {
  for_each     = toset(fileset(var.file_path, "*"))
  bucket       = var.bucket_name
  key          = "${var.s3_prefix}/${basename(each.value)}"
  source       = "${var.file_path}/${each.value}"
  etag         = filebase64sha256("${var.file_path}/${each.value}")
  content_type = var.content_type
}