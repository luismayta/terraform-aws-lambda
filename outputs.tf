output "instance" {
  description = "output instance repository"
  value       = aws_lambda_function.this
}

output "name" {
  description = "name aws lambda"
  value       = aws_lambda_function.this.function_name
}
