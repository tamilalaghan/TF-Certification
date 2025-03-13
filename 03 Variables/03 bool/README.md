Execute

bool.tf
```js
resource "local_file" "bool_file" {
    filename = var.bool_file_fname
    content = "${var.bool_file_contenthead} ${var.bool_file_bool}"
  
}
```
variables.tf
```js
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
```

Terraform plan
![alt text](image.png)

Terraform Apply
![alt text](image-1.png)

Terraform show
![alt text](image-2.png)