variable "bucket_name" {
  description = "The name of the S3 bucket to upload the file to"
  type        = string
}

variable "object_key" {
  description = "The S3 key (path) for the uploaded file"
  type        = string
}

variable "source_path" {
  description = "The local path of the file to be uploaded"
  type        = string
}

variable "acl" {
  description = "The access control list for the S3 object"
  type        = string
  default     = "private"
}
