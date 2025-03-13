variable "string_file_fname"{
    default = "strings.txt"
    description = "description and type are optional parameters"
    type = string
}
variable "string_file_content" {
  default = "*** This is Strings File ****"
}