terraform {
  backend "s3" {
    bucket = "another-bucket"
    key    = "place/for/state"
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
