# resource "alicloud_dns_record" "default" {
#   name        = local.domain
#   host_record = local.prefix
#   type        = "A"
#   ttl         = 600
#   routing     = "default"

#   # Refer to the public IP of the instance
#   value = alicloud_instance.default.public_ip
# }