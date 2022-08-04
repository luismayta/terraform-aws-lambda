module "label" {
  source    = "hadenlabs/tags/null"
  version   = "0.1.1"
  namespace = var.namespace
  stage     = var.stage
  name      = var.name
  tags      = var.tags
}


resource "aws_lambda_function" "this" {
  filename      = format("%s.zip", module.label.id)
  function_name = format("%s_%s", module.label.id, var.handler)
  role          = var.role
  handler       = var.handler
  runtime       = var.runtime
  timeout       = var.timeout
  tracing_config = {
    mode = "Active"
  }

  environment {
    variables = var.environments
  }

  vpc_config {
    subnet_ids         = var.subnets
    security_group_ids = var.sg_ids
  }

}

# resource "aws_lambda_function" "main" {
#   count = var.enabled

#   function_name    = var.lambda_function_name
#   role             = var.lambda_iam_role
#   handler          = "index.handler"
#   runtime          = var.lambda_runtime
#   memory_size      = var.memory
#   source_code_hash = data.archive_file.main[count.index].output_base64sha256
#   layers = [
#     var.layer_arn
#   ]

#   environment {
#     variables = var.environment_variables
#   }

#   vpc_config {
#     subnet_ids         = var.subnets
#     security_group_ids = var.sg_ids
#   }
# }

# CloudWatch logs to stream all module
resource "aws_cloudwatch_log_group" "this" {
  name              = format("%s_%s", module.label.id, var.handler)
  retention_in_days = 7
}
