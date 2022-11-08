resource "google_storage_bucket_iam_policy" "tfer--abde-storage-bucket" {
  bucket = "b/abde-storage-bucket"
  policy_data = data.google_iam_policy.admin.policy_data
}

data "google_iam_policy" "admin" {
  binding {
    role = "roles/storage.admin"
    members = [
      "user:elamrani.abdessamad@gmail.com",
    ]
  }
}
