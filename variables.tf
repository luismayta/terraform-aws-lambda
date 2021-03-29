variable "name" {
  type        = string
  description = "The name of the lambda to create, which also defines (i) the archive name (.zip), (ii) the file name, and (iii) the function name"
}

variable "namespace" {
  type        = string
  description = "The namespace of project"
}

variable "stage" {
  type        = string
  description = "The name of stage (dev,staging,prod)"
}

variable "delimiter" {
  type        = string
  description = "The delimiter of label"
  default     = "-"
}

variable "attributes" {
  type        = list(any)
  description = "The attributes of list"
  default     = []
}

variable "tags" {
  type        = map(any)
  description = "The tags for add resources"
  default     = {}
}

variable "runtime" {
  type        = string
  description = "The runtime of the lambda to create"
  default     = "nodejs12.x"
}

variable "role" {
  type        = string
  description = "IAM role attached to the Lambda Function (ARN)"
}

variable "handler" {
  type        = string
  description = "The handler name of the lambda (a function defined in your lambda)"
}