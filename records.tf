resource "sam_domain" "domain" {
  name = var.domain_name
}

resource "sam_record" "domain_A" {
  domain = sam_domain.domain.name
  type   = "A"
  name   = "@"
  value  = var.ipv4_address
}

resource "sam_record" "domain_CNAME" {
  domain = sam_domain.domain.name
  type   = "CNAME"
  name   = "www"
  value  = "@"
}
