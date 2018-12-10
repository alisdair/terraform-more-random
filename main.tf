resource "random_id" "random" {
  keepers {
    uuid = "${uuid()}"
  }

  byte_length = 36
}

output "random" {
  value = "rnd-${random_id.random.hex}"
}
