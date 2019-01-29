provider "conjur" {
}

data "conjur_secret" "aws_access_key" {
  name = "{{ CONJUR_SECRET_1 }}"
}

data "conjur_secret" "aws_secret_key" {
  name = "{{ CONJUR_SECRET_2 }}"
}

output "secrets-to-output" {
  value = "\n aws access key : ${data.conjur_secret.aws_access_key.value} \n aws secret key : ${data.conjur_secret.aws_secret_key.value}"
  sensitive = false
}

resource "local_file" "secrets-to-file" {
  content = "\n aws access key : ${data.conjur_secret.aws_access_key.value} \n aws secret key : ${data.conjur_secret.aws_secret_key.value}"
  filename = "${path.module}/secrets"
}
