# Import the Alibaba Cloud provider
provider "alicloud" { # Configure the Alicloud Provider
#   access_key = "${var.access_key}"
#   secret_key = "${var.secret_key}"
#   region     = "${var.region}"

  # Here you can find the "Region ID": https://www.alibabacloud.com/help/doc-detail/40654.htm
  region     = local.region
#   region     = "me-central-1a" # Middel East Central Avilability Zone (1a)
  # How to create a pair of access_key and secret_key: https://www.alibabacloud.com/help/doc-detail/53045.htm
  access_key = "LTAI5tKjbE1JdqAkvRDBDGby"
  secret_key = "P4cX3Ty91VGH3nghkFXWnawxRMzgWV"


  # profile = 
}