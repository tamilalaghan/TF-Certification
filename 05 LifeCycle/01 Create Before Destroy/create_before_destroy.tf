
resource "local_file" "cbd" {
    filename = var.fname
    content = var.content

    lifecycle {
      create_before_destroy = true
    }
}