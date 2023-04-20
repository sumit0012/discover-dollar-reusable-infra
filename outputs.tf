output "A_fqdn" {
  value = sam_record.domain_A.fqdn
}

output "CNAME_fqdn" {
  value = sam.domain_CNAME.fqdn
}
