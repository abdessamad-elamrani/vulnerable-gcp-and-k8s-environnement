resource "google_project_iam_member" "tfer--projects-002F-endless-anagram-367719-002F-roles-002F-CustomComputeStorageAdminserviceAccount-003A-xxx-storage-3-0040-endless-anagram-367719-002E-iam-002E-gserviceaccount-002E-com" {
  member  = "serviceAccount:xxx-storage-3@endless-anagram-367719.iam.gserviceaccount.com"
  project = "endless-anagram-367719"
  role    = "projects/endless-anagram-367719/roles/CustomComputeStorageAdmin"
}

resource "google_project_iam_member" "tfer--projects-002F-endless-anagram-367719-002F-roles-002F-lucidroleserviceAccount-003A-lucidserviceaccount-0040-endless-anagram-367719-002E-iam-002E-gserviceaccount-002E-com" {
  member  = "serviceAccount:lucidserviceaccount@endless-anagram-367719.iam.gserviceaccount.com"
  project = "endless-anagram-367719"
  role    = "projects/endless-anagram-367719/roles/lucidrole"
}

resource "google_project_iam_member" "tfer--roles-002F-compute-002E-admindeleted-003A-serviceAccount-003A-compute-sa-0040-endless-anagram-367719-002E-iam-002E-gserviceaccount-002E-com-003F-uid-003D-107767844984970324465" {
  member  = "deleted:serviceAccount:compute-sa@endless-anagram-367719.iam.gserviceaccount.com?uid=107767844984970324465"
  project = "endless-anagram-367719"
  role    = "roles/compute.admin"
}

resource "google_project_iam_member" "tfer--roles-002F-compute-002E-admindeleted-003A-serviceAccount-003A-custom-compute-allow-api-sa-0040-endless-anagram-367719-002E-iam-002E-gserviceaccount-002E-com-003F-uid-003D-105408376428894630018" {
  member  = "deleted:serviceAccount:custom-compute-allow-api-sa@endless-anagram-367719.iam.gserviceaccount.com?uid=105408376428894630018"
  project = "endless-anagram-367719"
  role    = "roles/compute.admin"
}

resource "google_project_iam_member" "tfer--roles-002F-compute-002E-admindeleted-003A-serviceAccount-003A-step2-custom-sa-0040-endless-anagram-367719-002E-iam-002E-gserviceaccount-002E-com-003F-uid-003D-109878432368061753709" {
  member  = "deleted:serviceAccount:step2-custom-sa@endless-anagram-367719.iam.gserviceaccount.com?uid=109878432368061753709"
  project = "endless-anagram-367719"
  role    = "roles/compute.admin"
}

resource "google_project_iam_member" "tfer--roles-002F-compute-002E-admindeleted-003A-serviceAccount-003A-test3-354-0040-endless-anagram-367719-002E-iam-002E-gserviceaccount-002E-com-003F-uid-003D-110283672400240489581" {
  member  = "deleted:serviceAccount:test3-354@endless-anagram-367719.iam.gserviceaccount.com?uid=110283672400240489581"
  project = "endless-anagram-367719"
  role    = "roles/compute.admin"
}

resource "google_project_iam_member" "tfer--roles-002F-compute-002E-adminserviceAccount-003A-compute-sa-0040-endless-anagram-367719-002E-iam-002E-gserviceaccount-002E-com" {
  member  = "serviceAccount:compute-sa@endless-anagram-367719.iam.gserviceaccount.com"
  project = "endless-anagram-367719"
  role    = "roles/compute.admin"
}

resource "google_project_iam_member" "tfer--roles-002F-compute-002E-adminserviceAccount-003A-xx-compute-sa-0040-endless-anagram-367719-002E-iam-002E-gserviceaccount-002E-com" {
  member  = "serviceAccount:xx-compute-sa@endless-anagram-367719.iam.gserviceaccount.com"
  project = "endless-anagram-367719"
  role    = "roles/compute.admin"
}

resource "google_project_iam_member" "tfer--roles-002F-compute-002E-serviceAgentdeleted-003A-serviceAccount-003A-test-708-0040-endless-anagram-367719-002E-iam-002E-gserviceaccount-002E-com-003F-uid-003D-116222766579707969275" {
  member  = "deleted:serviceAccount:test-708@endless-anagram-367719.iam.gserviceaccount.com?uid=116222766579707969275"
  project = "endless-anagram-367719"
  role    = "roles/compute.serviceAgent"
}

resource "google_project_iam_member" "tfer--roles-002F-compute-002E-serviceAgentdeleted-003A-serviceAccount-003A-test2-97-0040-endless-anagram-367719-002E-iam-002E-gserviceaccount-002E-com-003F-uid-003D-115386380173952232056" {
  member  = "deleted:serviceAccount:test2-97@endless-anagram-367719.iam.gserviceaccount.com?uid=115386380173952232056"
  project = "endless-anagram-367719"
  role    = "roles/compute.serviceAgent"
}

resource "google_project_iam_member" "tfer--roles-002F-compute-002E-serviceAgentserviceAccount-003A-service-4533191612-0040-compute-system-002E-iam-002E-gserviceaccount-002E-com" {
  member  = "serviceAccount:service-4533191612@compute-system.iam.gserviceaccount.com"
  project = "endless-anagram-367719"
  role    = "roles/compute.serviceAgent"
}

resource "google_project_iam_member" "tfer--roles-002F-compute-002E-storageAdmindeleted-003A-serviceAccount-003A-new-storage-sa-0040-endless-anagram-367719-002E-iam-002E-gserviceaccount-002E-com-003F-uid-003D-106359854061839878187" {
  member  = "deleted:serviceAccount:new-storage-sa@endless-anagram-367719.iam.gserviceaccount.com?uid=106359854061839878187"
  project = "endless-anagram-367719"
  role    = "roles/compute.storageAdmin"
}

resource "google_project_iam_member" "tfer--roles-002F-compute-002E-storageAdminserviceAccount-003A-compute-storage-2-sa-0040-endless-anagram-367719-002E-iam-002E-gserviceaccount-002E-com" {
  member  = "serviceAccount:compute-storage-2-sa@endless-anagram-367719.iam.gserviceaccount.com"
  project = "endless-anagram-367719"
  role    = "roles/compute.storageAdmin"
}

resource "google_project_iam_member" "tfer--roles-002F-compute-002E-storageAdminserviceAccount-003A-compute-storage-sa-0040-endless-anagram-367719-002E-iam-002E-gserviceaccount-002E-com" {
  member  = "serviceAccount:compute-storage-sa@endless-anagram-367719.iam.gserviceaccount.com"
  project = "endless-anagram-367719"
  role    = "roles/compute.storageAdmin"
}

resource "google_project_iam_member" "tfer--roles-002F-compute-002E-storageAdminserviceAccount-003A-mybackup-sa-0040-endless-anagram-367719-002E-iam-002E-gserviceaccount-002E-com" {
  member  = "serviceAccount:mybackup-sa@endless-anagram-367719.iam.gserviceaccount.com"
  project = "endless-anagram-367719"
  role    = "roles/compute.storageAdmin"
}

resource "google_project_iam_member" "tfer--roles-002F-compute-002E-storageAdminserviceAccount-003A-xx-compute-storage-sa-0040-endless-anagram-367719-002E-iam-002E-gserviceaccount-002E-com" {
  member  = "serviceAccount:xx-compute-storage-sa@endless-anagram-367719.iam.gserviceaccount.com"
  project = "endless-anagram-367719"
  role    = "roles/compute.storageAdmin"
}

resource "google_project_iam_member" "tfer--roles-002F-container-002E-nodeServiceAgentserviceAccount-003A-service-4533191612-0040-gcp-sa-gkenode-002E-iam-002E-gserviceaccount-002E-com" {
  member  = "serviceAccount:service-4533191612@gcp-sa-gkenode.iam.gserviceaccount.com"
  project = "endless-anagram-367719"
  role    = "roles/container.nodeServiceAgent"
}

resource "google_project_iam_member" "tfer--roles-002F-container-002E-serviceAgentserviceAccount-003A-service-4533191612-0040-container-engine-robot-002E-iam-002E-gserviceaccount-002E-com" {
  member  = "serviceAccount:service-4533191612@container-engine-robot.iam.gserviceaccount.com"
  project = "endless-anagram-367719"
  role    = "roles/container.serviceAgent"
}

resource "google_project_iam_member" "tfer--roles-002F-containerregistry-002E-ServiceAgentserviceAccount-003A-service-4533191612-0040-containerregistry-002E-iam-002E-gserviceaccount-002E-com" {
  member  = "serviceAccount:service-4533191612@containerregistry.iam.gserviceaccount.com"
  project = "endless-anagram-367719"
  role    = "roles/containerregistry.ServiceAgent"
}

resource "google_project_iam_member" "tfer--roles-002F-editorserviceAccount-003A-4533191612-0040-cloudservices-002E-gserviceaccount-002E-com" {
  member  = "serviceAccount:4533191612@cloudservices.gserviceaccount.com"
  project = "endless-anagram-367719"
  role    = "roles/editor"
}

resource "google_project_iam_member" "tfer--roles-002F-editorserviceAccount-003A-4533191612-compute-0040-developer-002E-gserviceaccount-002E-com" {
  member  = "serviceAccount:4533191612-compute@developer.gserviceaccount.com"
  project = "endless-anagram-367719"
  role    = "roles/editor"
}

resource "google_project_iam_member" "tfer--roles-002F-owneruser-003A-elamrani-002E-abdessamad-0040-gmail-002E-com" {
  member  = "user:elamrani.abdessamad@gmail.com"
  project = "endless-anagram-367719"
  role    = "roles/owner"
}

resource "google_project_iam_member" "tfer--roles-002F-pubsub-002E-serviceAgentserviceAccount-003A-service-4533191612-0040-gcp-sa-pubsub-002E-iam-002E-gserviceaccount-002E-com" {
  member  = "serviceAccount:service-4533191612@gcp-sa-pubsub.iam.gserviceaccount.com"
  project = "endless-anagram-367719"
  role    = "roles/pubsub.serviceAgent"
}
