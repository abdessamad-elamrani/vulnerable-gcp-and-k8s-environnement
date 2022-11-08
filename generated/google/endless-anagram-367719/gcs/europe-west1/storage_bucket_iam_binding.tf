resource "google_storage_bucket_iam_binding" "tfer--abde-storage-bucket" {
  bucket = "b/abde-storage-bucket"
  role= "roles/storage.admin"
  members = ["allUsers"]
}
