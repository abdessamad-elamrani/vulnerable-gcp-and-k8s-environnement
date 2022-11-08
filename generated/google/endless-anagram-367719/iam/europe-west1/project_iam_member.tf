resource "google_project_iam_member" "tfer--roles-002F-compute-002E-serviceAgentserviceAccount-003A-service-4533191612-0040-compute-system-002E-iam-002E-gserviceaccount-002E-com" {
  member  = "serviceAccount:service-4533191612@compute-system.iam.gserviceaccount.com"
  project = "endless-anagram-367719"
  role    = "roles/compute.serviceAgent"
}

resource "google_project_iam_member" "tfer--roles-002F-compute-002E-storageAdminserviceAccount-003A-mybackup-sa-0040-endless-anagram-367719-002E-iam-002E-gserviceaccount-002E-com" {
  member  = "serviceAccount:mybackup-sa@endless-anagram-367719.iam.gserviceaccount.com"
  project = "endless-anagram-367719"
  role    = "roles/compute.storageAdmin"
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
