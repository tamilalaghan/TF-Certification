resource "local_file" "process_file" {
    filename = "process.txt"
    content = data.local_file.data_source_file.content

    lifecycle {
      replace_triggered_by = [ null_resource.change_deduct.triggers.source_hash ]
    }
  
  
}

data "local_file" "data_source_file"{
    filename = "data_file_source.txt"
}

resource "null_resource" "change_deduct" {
    triggers = {
        source_hash = filemd5("${path.module}/${data.local_file.data_source_file.filename}")     
    }
}

output "trigger_op"{
    value = null_resource.change_deduct.triggers.source_hash
}