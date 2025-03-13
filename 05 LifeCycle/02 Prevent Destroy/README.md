Execute
```js

resource "random_pet" "pet" {
    length = 2

    lifecycle {
      prevent_destroy = true
    }
  
}
```


Terraform Plan
![alt text](image.png)

Terraform Apply

![alt text](image-1.png)

Terraform Destroy

![alt text](image-2.png)