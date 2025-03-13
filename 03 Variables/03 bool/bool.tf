resource "local_file" "bool_file" {
    filename = var.bool_file_fname
    content = "${var.bool_file_contenthead} ${var.bool_file_bool}"
  
}