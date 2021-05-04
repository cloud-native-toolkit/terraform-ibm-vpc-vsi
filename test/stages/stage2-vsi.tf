module "vsi" {
  source = "./module"

  resource_group_id = module.resource_group.id
  region            = var.region
  ibmcloud_api_key  = var.ibmcloud_api_key
  vpc_name          = module.vpc.name
  vpc_subnet_count  = module.subnets.count
  vpc_subnets       = module.subnets.subnets
  ssh_key_ids       = [module.vpcssh.id]
  flow_log_cos_bucket_name = module.dev_cos_bucket.bucket_name
  kms_key_id        = var.kms_key_id
  kms_enabled       = var.kms_enabled
  kms_id            = module.hpcs.id
}