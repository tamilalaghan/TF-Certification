variable "numbers_file_fname"{
    default = "numbers.txt"
    description = "description and type are optional parameters"
    type = string
}
variable "numbers_file_content" {
  default = 7383837377772828282
  type = number
}