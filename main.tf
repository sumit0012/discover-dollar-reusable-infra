module "droplets" {
  source   = "../../modules/droplet-lb"

  droplet_count = 2
  group_name    = "dev"
}

module "dns" {
  source   = "../../modules/dns-records"

  domain_name   = "your_prod_domain"
  ipv4_address  = module.droplets.lb_ip
}
  

