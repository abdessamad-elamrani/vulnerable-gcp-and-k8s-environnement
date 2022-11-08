resource "google_storage_bucket" "tfer--abde-storage-bucket" {
  default_event_based_hold    = "false"
  force_destroy               = "false"
  location                    = "EUROPE-WEST1"
  name                        = "abde-storage-bucket"
  project                     = "endless-anagram-367719"
  public_access_prevention    = "inherited"
  requester_pays              = "false"
  storage_class               = "STANDARD"
  uniform_bucket_level_access = "false"
}
