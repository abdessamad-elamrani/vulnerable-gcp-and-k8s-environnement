resource "google_compute_network" "tfer--abde-vpc" {
  auto_create_subnetworks         = "false"
  delete_default_routes_on_create = "false"
  enable_ula_internal_ipv6        = "false"
  mtu                             = "1460"
  name                            = "abde-vpc"
  project                         = "endless-anagram-367719"
  routing_mode                    = "REGIONAL"
}
