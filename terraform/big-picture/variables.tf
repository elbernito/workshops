variable "theSecret" {
  description = "this will demands a secret on apply or from a tfvars file"
  type        = string
  sensitive   = true
  # no default, terraform will demands on execution
}
