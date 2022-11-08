resource "google_storage_default_object_acl" "tfer--abde-storage-bucket" {
  bucket      = "abde-storage-bucket"
  role_entity = ["OWNER:project-editors-4533191612", "OWNER:project-owners-4533191612", "READER:project-viewers-4533191612"]
}
