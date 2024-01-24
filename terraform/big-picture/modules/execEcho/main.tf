# ================================================================
# This module demands two variables and concat in a single varible
# Afterwards will print to a local echo"
# ================================================================

# Concat given variables to a hidden one
locals {
  output_text = "${var.echo_text_line_a} ${var.echo_text_line_b}"
}

# This provisioner is only for testing. If you need a bash/shell/.. execution, 
# take a look to the terraform repository if find a provider for the same.
# Provisiones do not execute a CRUD lifecycle and will not recognize a change!
resource "null_resource" "print_to_exec" {

  # Provisioner for local execution in a bash or shell
  provisioner "local-exec" {
    command = "echo ${local.output_text}"
  }
  
}

