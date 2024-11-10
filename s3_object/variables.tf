variable "bucket_name" {
  description = "Name of the S3 bucket where code will be uploaded"
  type        = string
}

variable "code_file_path" {
  description = "Path to the zip file containing code to upload"
  type        = string
}

variable "s3_key" {
  description = "S3 key (path) for the uploaded object"
  type        = string
}
