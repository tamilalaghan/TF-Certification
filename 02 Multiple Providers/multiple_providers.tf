
resource "local_file" "providers_file" {
    filename = "providers_file.txt"
    content = "This is a providers text file"
  
}

resource "random_id" "magic_id" {
    byte_length = 8
  
}