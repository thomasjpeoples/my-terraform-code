resource "aws_s3_object" "file_upload" {
  bucket = var.bucket_name
  key    = var.object_key
  source = var.source_path
  acl    = var.acl
}
