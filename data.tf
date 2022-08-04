# Zip file to upload function lambda
data "archive_file" "this" {
  count       = var.enabled
  type        = "zip"
  source_dir  = var.code_location
  output_path = format("%s/.terraform/archive_files/%s", path.module, var.filename)
}
