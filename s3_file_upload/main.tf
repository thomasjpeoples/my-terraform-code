# Upload any file (e.g., .txt, .csv, .json, etc.) to a specific S3 path

resource "aws_s3_object" "file_upload" {
  bucket = var.bucket_name
  key    = "${var.s3_prefix}/${basename(var.file_path)}"  # Retains the original file name
  source = var.file_path
  etag   = filebase64sha256(var.file_path)
}