variable "name" {
  description = "The name of the lambda to create, which also defines (i) the archive name (.zip), (ii) the file name, and (iii) the function name"
}

variable "namespace" {}

variable "stage" {}

variable "_delimiter" {
  type    = "string"
  default = "-"
}

variable "_attributes" {
  type    = "list"
  default = []
}

variable "_tags" {
  type    = "map"
  default = {}
}

variable "runtime" {
  description = "The runtime of the lambda to create"
  default     = "nodejs"
}

variable "handler" {
  description = "The handler name of the lambda (a function defined in your lambda)"
  default     = "handler"
}

variable "role" {
  description = "IAM role attached to the Lambda Function (ARN)"
}
