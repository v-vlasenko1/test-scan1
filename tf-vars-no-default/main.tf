variable "name" {
  type = string
}

resource "terraform_data" "hello" {
  provisioner "local-exec" {
    command = "echo Hello, ${var.name}"
  }
}
