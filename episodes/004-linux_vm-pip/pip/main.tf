resource random_string main {
  length           = 6
  upper            = false
  special          = false
}

resource azurerm_resource_group main {
  name     = "rg-ep4-${random_string.main.result}"
  location = var.location
}
