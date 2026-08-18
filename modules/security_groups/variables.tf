variable "sg_ids" {
    type = list(string)
    default = []
    description = "security group id"
    sensitive = false
    validation {
        condition = length(var.sg_ids) != 0
        error_message = "sg_ids is required"
    }
}

