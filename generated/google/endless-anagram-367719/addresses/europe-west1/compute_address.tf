resource "google_compute_address" "tfer--ec2-ip1" {
  address_type  = "EXTERNAL"
  name          = "ec2-ip1"
  network_tier  = "PREMIUM"
  prefix_length = "0"
  project       = "endless-anagram-367719"
  region        = "europe-west1"
}

resource "google_compute_address" "tfer--ec2-ip2" {
  address_type  = "EXTERNAL"
  name          = "ec2-ip2"
  network_tier  = "PREMIUM"
  prefix_length = "0"
  project       = "endless-anagram-367719"
  region        = "europe-west1"
}

resource "google_compute_address" "tfer--internal-ip1" {
  address_type  = "INTERNAL"
  name          = "internal-ip1"
  prefix_length = "0"
  project       = "endless-anagram-367719"
  region        = "europe-west1"
}
