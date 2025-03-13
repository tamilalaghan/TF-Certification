resource "local_file" "numbers_file" {
    filename = var.numbers_file_fname
    content = var.numbers_file_content
}