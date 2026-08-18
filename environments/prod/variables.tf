variable "access_key" {
    description = "Access Key ID"
    type        = string
    default     = ""
    sensitive   = true
    validation {
      condition = length(var.access_key) == 24
      error_message = "Access Key ID must be 24 characters long"
    }
}

variable "secret_key" {
    description = "Secret Key"
    type        = string
    default     = ""
    sensitive   = true
    validation {
      condition = length(var.secret_key) == 30
      error_message = "Secret Key must be 40 characters long"
    }
}

variable "region" {
    description = "Region"
    type        = string
    default     = ""
}