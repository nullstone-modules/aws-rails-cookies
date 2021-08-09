terraform {
  required_providers {
    ns = {
      source = "nullstone-io/ns"
    }
  }
}

variable "app_metadata" {
  description = <<EOF
App Metadata is injected from the app on-the-fly.
This contains information about resources created in the app module that are needed by the capability.
EOF

  type    = map(string)
  default = {}
}
