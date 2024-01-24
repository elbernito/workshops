# =========================================================
# This is a main module for execution with two submodules 
# and a secret
# =========================================================

# ------------ Module prints with a local shell / bash exec command ------------ 
module "print_to_exec" {
  # where is the module
  source           = "./modules/execEcho"
  # The two variables the module demands
  echo_text_line_a = "Hello, "
  echo_text_line_b = "World"
}

#  ------------ Module define a output variable. This will print only when is defined in this caller module ------------ 
module "print_output" {
  # where is the module
  source = "./modules/sayHelloWorld"
}

# This is the way, for take an output from a submodule
output "output_from_module" {
  # prints the defined output from the module
  value = module.print_output.hello_World
}

#  ------------ This will print the given secret.... :) ------------ 
output "the_secret" {
  # the defined variable is marked with sensitive. Terraform known this and break apply if output not marked as sensitive
  sensitive = true
  # prints the secret
  value = var.theSecret
}

#  ------------ The end ------------ 
output "the_end" {
  depends_on = [ module.print_to_exec, module.print_output, var.theSecret ] # not working, due terraform run all non blocking before
  value = "So Long, and Thanks for All the Fish..."
}
