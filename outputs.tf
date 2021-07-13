output "secrets" {
  value = [
    {
      name      = "SECRET_KEY_BASE"
      valueFrom = aws_secretsmanager_secret.secret_key_base.arn
    }
  ]

  description = "map(string) ||| A map of secrets to inject into the service."
}
