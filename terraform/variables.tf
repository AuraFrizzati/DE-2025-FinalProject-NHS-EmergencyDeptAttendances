variable "project_name" {
  description = "Project name"
  type        = string
  default     = "eternal-arcana-449014-d1"
}


variable "region" {
  description = "Project region"
  type        = string
  default     = "europe-west2"
}


variable "location" {
  description = "Project location"
  type        = string
  default     = "EUROPE-WEST2"
}


variable "bq_dataset_name" {
  description = "The name of the BigQuery dataset to create"
  type        = string
  default     = "DE_2025_final_DW"
}

variable "bucket_name" {
  description = "My storage bucket name"
  type        = string
  default     = "de_2025_final_bucket_af"
}
