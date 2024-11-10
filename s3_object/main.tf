resource "aws_s3_object" "file_upload" {
  bucket_name = var.bucket_name
  object_key  = var.object_key
  source_path = var.source_path
  acl         = var.acl
}
