resource "random_id" "random" {
  keepers {
    uuid = "${uuid()}"
  }

  byte_length = 59
}

output "random" {
  value = "rnd-${random_id.random.hex}"
}
