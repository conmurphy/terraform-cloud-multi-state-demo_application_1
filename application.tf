
data "aci_tenant" "conmurph" {
  name  = "conmurph"
}

resource "aci_application_profile" "application_1" {
  tenant_dn  = "${data.aci_tenant.conmurph.id}"
  name       = "application_1"
}

resource "aci_application_epg" "application_1" {
    application_profile_dn  = "${aci_application_profile.application_1.id}"
    name                              = "application_1"
}

resource "aci_bridge_domain" "application_1" {
  tenant_dn   = "${data.aci_tenant.conmurph.id}"
  name        = "application_1"
  description = "This bridge domain is created by terraform ACI provider"
}

resource "aci_subnet" "application_1" {
  parent_dn                    = "${aci_bridge_domain.application_1.id}"
  ip                                  = "1.1.1.243/24"
  description                         = "This subject is created by terraform"
}
