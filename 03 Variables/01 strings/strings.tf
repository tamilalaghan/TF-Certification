resource "local_file" "strings_file" {
    filename = var.string_file_fname
    content = var.string_file_content
}