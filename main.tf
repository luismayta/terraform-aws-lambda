module "label" {
  source     = "cloudposse/label/null"
  version    = "0.24.1"
  namespace  = var.namespace
  stage      = var.stage
  name       = var.name
  delimiter  = var.delimiter
  attributes = var.attributes
  tags       = var.tags
}


resource "aws_lambda_function" "this" {
  filename      = format("%s.zip", module.label.id)
  function_name = format("%s_%s", module.label.id, var.handler)
  role          = var.role
  handler       = var.handler
  runtime       = var.runtime
  tracing_config = {
    mode = "Active"
  }
}
