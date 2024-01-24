# ================================================================
# This module try to output directly a variable. This will not
# work! Place to top main
# ================================================================
resource "null_resource" "print_output" {
    # Nothing to do!
}

# This will not work! Sub-modules can't print outputs. Place it to the main.tf on top execution
output "hello_World" {
  value = "Submodule: ${var.say_HelloWorld}"
}