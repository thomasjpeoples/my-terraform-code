output "object_url" {
  description = "The URL of the uploaded S3 object"
  value       = "s3://${var.bucket_name}/${var.object_key}"
}
