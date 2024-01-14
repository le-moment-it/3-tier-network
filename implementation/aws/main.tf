module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = var.vpc_version

  name = var.vpc_name
  cidr = var.vpc_cidr

  azs                 = var.vpc_azs
  private_subnets     = var.vpc_private_subnets
  public_subnets      = var.vpc_public_subnets
  database_subnets    = var.vpc_database_subnets
  elasticache_subnets = var.vpc_elasticache_subnets
  redshift_subnets    = var.vpc_redshift_subnets
  intra_subnets       = var.vpc_intra_subnets

  private_subnet_names     = var.vpc_private_subnet_names
  database_subnet_names    = var.vpc_database_subnet_names
  elasticache_subnet_names = var.vpc_elasticache_subnet_names
  redshift_subnet_names    = var.vpc_redshift_subnet_names
  intra_subnet_names       = var.vpc_intra_subnet_names


  enable_nat_gateway = var.vpc_enable_nat_gateway
  enable_vpn_gateway = var.vpc_enable_vpn_gateway
  single_nat_gateway = var.vpc_single_nat_gateway

  tags = merge(var.vpc_tags, var.local.framework)
}
