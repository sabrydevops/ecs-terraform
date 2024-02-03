resource "alicloud_ecs_key_pair" "qa_key_pair" {
  key_pair_name  = "qa-key-pair"
  resource_group_id = alicloud_resource_manager_resource_group.qa_rg.id


  tags = {
    BuiltBy     = "SabryTarek"
    cnm_version = "1"
    Environment = "qa"
    ManagedBy   = "SabryTarek"
  }
}




# resource "alicloud_key_pair" "default" {
#   key_pair_name   = local.prefix
#   public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDVvVu3e8wfZ654eEDB7UwEVW/0AcQMmATNqTvt54ySYewCTKTIn0HhXE9ZhYj4gXovD3Wu3PaARHC2+idhVxIT3RBH8XeQuhTRXYdTnsX5Gv3vEhmKiRS3D8g8xyvVFyk0i1vgpdgPrFod9d5Wib9IDBWbx5ycc/KjUlxvYA01Zpz1Rshlu/gCaFkWKZJ65J/caTeX2kowa9DxftqXriV7wtZupL8O5GbLRwPaU4uXKF99PSF7EyYBXyVoBjJ1ivRZU/5LE9SA0uheOsZI5DY7j6ROhGWrbyyq2xFmMxzSVTJr072NLjzad2jDfR1AloUrXw7E+jr9E27l/SSvOSCTVbnoy838+UbtcKjjScQsEFTIOws21E/cSZ1v7L8PdTJqooeE/nbfVMU+ZbPdQRtJrTUn9mqJIWx2cK2JqpjuX4chNQt7Ltpl24QZQlYEWB5ENeANkKyTZ2XRjLPdQTJjuxeASVlVvJKUFhQWzWa0Z3nw8DHQ83RUR0M4BkCqowf2/k6pxctl+M3pb4NNH2basUWdF0vQFfz9SWoIwkT+/H+6MTmPT5mhgHwLqhVOwccUYvACq3NihPhvdghSURrkOGdPazjImsgk5OFBwPMytL3SzR2AyeY19LI/WP8kUKJwHWNeyNbFQ7RoGygJBYN67VexRkpnN0JmMgXlmlO/AQ== SabryTarekv"
# }