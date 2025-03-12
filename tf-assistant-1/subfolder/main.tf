terraform {
  backend "s3" {
    bucket = "mybucket"
    key    = "path/to/my/key"
    region = "us-east-1"
  }
}

resource "terraform_data" "echo" {
  provisioner "local-exec" {
    command = "env"
  }
  triggers_replace = [
    timestamp()
  ]
}
