resource "local_file" "config" {
    filename = "config_local.txt"
    content = data.local_file.config_source.content

    lifecycle {
      ignore_changes = all
      replace_triggered_by = [ null_resource.deduct_change.triggers.hash_md5 ]
    }
  
}

data "local_file" "config_source" {
    filename = "config_source.txt"
}


resource "null_resource" "deduct_change" {
    triggers = {
        hash_md5 = filemd5("${path.module}/${data.local_file.config_source.filename}")
      
    }
  
}

output "config_source_md5"{
    value = null_resource.deduct_change.triggers.hash_md5
}
