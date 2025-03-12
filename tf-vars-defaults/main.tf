variable "name" {
  type = string
  default = "Oleg"
}

resource "terraform_data" "hello" {
  provisioner "local-exec" {
    command = "echo Hello, ${var.name}"
  }
}
