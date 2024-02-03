# Some useful variables to reduce copy-paste, you can add whatever you like
locals {
  prefix   = "qa"
  domain   = "janafinancialqa.local"
  hostname = "${local.prefix}.${local.domain}"
  region   = "me-central-1"
  zone     = "me-central-1a"
}