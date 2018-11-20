resource "random_id" "random" {
  keepers {
    uuid = "${uuid()}"
  }

  byte_length = 12
}

output "random" {
  value = "id-${random_id.random.hex}"
}
