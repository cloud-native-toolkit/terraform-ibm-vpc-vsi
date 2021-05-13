module "vsi" {
  source = "./module"

  resource_group_id = module.resource_group.id
  region            = var.region
  ibmcloud_api_key  = var.ibmcloud_api_key
  vpc_name          = module.vpc.name
  vpc_subnet_count  = module.subnets.count
  vpc_subnets       = module.subnets.subnets
  ssh_key_id        = module.vpcssh.id
  kms_key_crn       = module.hpcs_key.crn
  kms_enabled       = var.kms_enabled
  allow_deprecated_image = false
  base_security_group = module.vpc.base_security_group
}
