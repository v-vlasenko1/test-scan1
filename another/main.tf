terraform {
  backend "gcs" {
    bucket  = "tf-state-prod"
    prefix  = "terraform/state"
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
