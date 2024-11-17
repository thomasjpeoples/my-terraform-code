variable "bucket_name" {
  description = "The name of the S3 bucket."
  type        = string
}

variable "s3_key" {
  description = "The S3 key (path) for the uploaded file."
  type        = string
}

variable "file_path" {
  description = "The local path to the file to upload (could be .txt, .csv, .json, .parquet, etc.)."
  type        = string
}