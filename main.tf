resource "random_id" "random" {
  keepers {
    uuid = "${uuid()}"
  }

  byte_length = 55
}

output "random" {
  value = "rnd-${random_id.random.hex}"
}
