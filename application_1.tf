
data "aci_tenant" "conmurph" {
  name  = "conmurph"
}


resource "aci_bridge_domain" "application_1" {
  tenant_dn   = "${aci_tenant.conmurph.id}"
  name        = "application_1"
  description = "This bridge domain is created by terraform ACI provider"
}

resource "aci_subnet" "application_1" {
  bridge_domain_dn                    = "${aci_bridge_domain.application_1.id}"
  ip                                  = "10.0.3.28/27"
  scope                               = "private"
  description                         = "This subject is created by terraform"
}