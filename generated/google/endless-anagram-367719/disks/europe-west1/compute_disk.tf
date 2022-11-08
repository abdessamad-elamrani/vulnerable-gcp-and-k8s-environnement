resource "google_compute_disk" "tfer--europe-west1-b-002F-mongo-db" {
  image                     = "https://www.googleapis.com/compute/v1/projects/ubuntu-os-cloud/global/images/ubuntu-1804-bionic-v20221018"
  name                      = "mongo-db"
  physical_block_size_bytes = "4096"
  project                   = "endless-anagram-367719"
  provisioned_iops          = "0"
  size                      = "10"
  type                      = "pd-balanced"
  zone                      = "europe-west1-b"
}
