locals {
  framework = {
    framework_piece_name     = "3-tier-network"
    framework_implementation = "aws"
    framework_path           = "${local.framework.framework_piece_name}:${local.framework.framework_implementation}"
  }
}
