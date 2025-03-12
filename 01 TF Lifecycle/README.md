Terraform Init

![alt text](image.png)

Execute One
```js

resource "local_file" "daisy"{
    filename = "daisy.txt"
    content = "I smile under the sun :)"
}
```
Terraform Plan

![alt text](image-1.png)

Terraform Apply

![alt text](image-2.png)

Outcome
![alt text](image-3.png)


Execute Two
```js

resource "local_file" "daisy"{
    filename = "daisy.txt"
    content = "I smile under the sun :), I don't like rain."
}

```
Terraform Plan
![alt text](image-4.png)

Terraform Apply
![alt text](image-5.png)

Terraform Destroy
![alt text](image-6.png)