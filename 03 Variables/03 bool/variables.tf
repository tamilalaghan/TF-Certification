variable "bool_file_fname" {
    default = "bool.txt"
  
}

variable "bool_file_contenthead" {
  default = "This is boolen file, the content is set to "
}

variable "bool_file_bool" {
    type = bool
    default = true
}