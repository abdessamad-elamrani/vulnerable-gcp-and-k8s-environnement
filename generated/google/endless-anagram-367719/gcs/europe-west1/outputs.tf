output "google_storage_bucket_acl_tfer--abde-storage-bucket_id" {
  value = "${google_storage_bucket_acl.tfer--abde-storage-bucket.id}"
}

output "google_storage_bucket_iam_binding_tfer--abde-storage-bucket_id" {
  value = "${google_storage_bucket_iam_binding.tfer--abde-storage-bucket.id}"
}

output "google_storage_bucket_iam_policy_tfer--abde-storage-bucket_id" {
  value = "${google_storage_bucket_iam_policy.tfer--abde-storage-bucket.id}"
}

output "google_storage_bucket_tfer--abde-storage-bucket_name" {
  value = "${google_storage_bucket.tfer--abde-storage-bucket.name}"
}

output "google_storage_bucket_tfer--abde-storage-bucket_self_link" {
  value = "${google_storage_bucket.tfer--abde-storage-bucket.self_link}"
}

output "google_storage_default_object_acl_tfer--abde-storage-bucket_id" {
  value = "${google_storage_default_object_acl.tfer--abde-storage-bucket.id}"
}
