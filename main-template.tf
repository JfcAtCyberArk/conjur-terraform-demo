provider "conjur" {
}

data "conjur_secret" "dbpass" {
  name = "{{ CONJUR_SECRET }}"
}

output "dbpass-to-output" {
  value = "${data.conjur_secret.dbpass.value}"
  sensitive = false
}

resource "local_file" "dbpass-to-file" {
  content = "${data.conjur_secret.dbpass.value}"
  filename = "${path.module}/dbpass"
}
