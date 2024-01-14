variable "vpc_version" {
  type        = string
  description = "Module version used"
  default     = "value"
}

variable "vpc_name" {
  type        = string
  description = "Name to be used on all the resources as identifier"
}

variable "vpc_cidr" {
  type        = string
  description = "The IPv4 CIDR block for the VPC"
}

variable "vpc_azs" {
  type        = list(string)
  description = "A list of availability zones names or ids in the region"
}

variable "vpc_public_subnets" {
  type        = list(string)
  description = "A list of public subnets inside the VPC"
  default     = []
}

variable "vpc_private_subnets" {
  type        = list(string)
  description = "A list of private subnets inside the VPC"
  default     = []
}

variable "vpc_database_subnets" {
  description = "A list of database subnets inside the VPC"
  type        = list(string)
  default     = []
}

variable "vpc_elasticache_subnets" {
  description = "A list of elasticache subnets inside the VPC"
  type        = list(string)
  default     = []
}

variable "vpc_redshift_subnets" {
  description = "A list of redshift subnets inside the VPC"
  type        = list(string)
  default     = []
}

variable "vpc_intra_subnets" {
  description = "A list of intra subnets inside the VPC"
  type        = list(string)
  default     = []
}

variable "vpc_private_subnet_names" {
  description = "Explicit values to use in the Name tag on private subnets. If empty, Name tags are generated"
  type        = list(string)
  default     = []
}

variable "vpc_database_subnet_names" {
  description = "Explicit values to use in the Name tag on database subnets. If empty, Name tags are generated"
  type        = list(string)
  default     = []
}

variable "vpc_elasticache_subnet_names" {
  description = "Explicit values to use in the Name tag on elasticache subnets. If empty, Name tags are generated"
  type        = list(string)
  default     = []
}

variable "vpc_redshift_subnet_names" {
  description = "Explicit values to use in the Name tag on redshift subnets. If empty, Name tags are generated"
  type        = list(string)
  default     = []
}

variable "vpc_intra_subnet_names" {
  description = "Explicit values to use in the Name tag on intra subnets. If empty, Name tags are generated"
  type        = list(string)
  default     = []
}

variable "vpc_enable_nat_gateway" {
  description = "Should be true if you want to provision NAT Gateways for each of your private networks"
  type        = bool
  default     = true
}
variable "vpc_enable_vpn_gateway" {
  description = "Should be true if you want to create a new VPN Gateway resource and attach it to the VPC"
  type        = bool
  default     = false
}



variable "vpc_single_nat_gateway" {
  description = "Should be true if you want to provision a single shared NAT Gateway across all of your private networks"
  type        = bool
  default     = false
}

variable "vpc_tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}
