#configure provider with your cisco aci credentials.
provider "aci" {
  # cisco-aci user name
  username = "admin"
  # cisco-aci password
  password = var.password
  # cisco-aci url
  url      =  var.url
  insecure = true
}





