
resource "random_pet" "pet" {
    length = 2

    lifecycle {
      prevent_destroy = true
    }
  
}