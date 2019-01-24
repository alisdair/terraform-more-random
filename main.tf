resource "random_id" "random" {
  keepers {
    uuid = "${uuid()}"
  }

  byte_length = 64
}

output "random" {
  value = "rand-${random_id.random.hex}"
}
