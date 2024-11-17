variable "bucket_name" {
  description = "The name of the S3 bucket."
  type        = string
}

variable "s3_prefix" {
  description = "The S3 prefix (path) where the file will be stored (e.g., dv/glue-metadata/)."
  type        = string
}

variable "file_path" {
  description = "The local path to the file to upload (could be .txt, .csv, .json, etc.)."
  type        = string
}