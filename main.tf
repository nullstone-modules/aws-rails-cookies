provider "random" {}

/*
 * NOTE: random_password uses a cryptographic random number generator
 * This is identical to how rails SecureRandom.hex works for generating secret_key_base
 * We use random_password instead of random_string or random_id since the result is marked sensitive
 *   and not exposed through console output
*/
resource "random_password" "secret_key_base" {
  // SecureRandom.hex(64) is used for aes-256-gcm; generates a key that is 128 characters
  length = 128

  // Configure to generate only hex characters
  special          = true
  override_special = "abcdef"
  upper            = false
  lower            = false
  number           = true
}

output "secrets" {
  value = tomap({
    secret_key_base : random_password.secret_key_base.result
  })
  description = "map(string) ||| A map of secrets to inject into the service."
  sensitive   = true
}
