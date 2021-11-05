terraform {
  required_providers {
    ibm = {
      source = "ibm-cloud/ibm"
      version = ">= 1.27.0"
    }
  }
  experiments = [module_variable_optional_attrs]
  required_version = ">= 0.15"
}

