output "uploaded_file_key" {
  description = "The key of the uploaded file in S3."
  value       = aws_s3_bucket_object.file_upload.key
}