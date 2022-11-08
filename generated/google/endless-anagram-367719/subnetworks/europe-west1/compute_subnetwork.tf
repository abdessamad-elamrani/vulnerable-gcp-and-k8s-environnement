resource "google_compute_subnetwork" "tfer--private-subnet1" {
  ip_cidr_range              = "10.99.2.0/24"
  name                       = "private-subnet1"
  network                    = "https://www.googleapis.com/compute/v1/projects/endless-anagram-367719/global/networks/abde-vpc"
  private_ip_google_access   = "false"
  private_ipv6_google_access = "DISABLE_GOOGLE_ACCESS"
  project                    = "endless-anagram-367719"
  purpose                    = "PRIVATE"
  region                     = "europe-west1"
  stack_type                 = "IPV4_ONLY"
}

resource "google_compute_subnetwork" "tfer--private-subnet2" {
  ip_cidr_range              = "10.99.3.0/24"
  name                       = "private-subnet2"
  network                    = "https://www.googleapis.com/compute/v1/projects/endless-anagram-367719/global/networks/abde-vpc"
  private_ip_google_access   = "false"
  private_ipv6_google_access = "DISABLE_GOOGLE_ACCESS"
  project                    = "endless-anagram-367719"
  purpose                    = "PRIVATE"
  region                     = "europe-west1"
  stack_type                 = "IPV4_ONLY"
}

resource "google_compute_subnetwork" "tfer--public-subnet" {
  ip_cidr_range              = "10.99.1.0/24"
  name                       = "public-subnet"
  network                    = "https://www.googleapis.com/compute/v1/projects/endless-anagram-367719/global/networks/abde-vpc"
  private_ip_google_access   = "false"
  private_ipv6_google_access = "DISABLE_GOOGLE_ACCESS"
  project                    = "endless-anagram-367719"
  purpose                    = "PRIVATE"
  region                     = "europe-west1"
  stack_type                 = "IPV4_ONLY"
}
