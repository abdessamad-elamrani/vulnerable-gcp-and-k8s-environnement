resource "google_compute_disk" "tfer--europe-west1-b-002F-attacker-1" {
  image                     = "https://www.googleapis.com/compute/v1/projects/debian-cloud/global/images/debian-10-buster-v20221102"
  name                      = "attacker-1"
  physical_block_size_bytes = "4096"
  project                   = "endless-anagram-367719"
  provisioned_iops          = "0"
  size                      = "10"
  type                      = "pd-balanced"
  zone                      = "europe-west1-b"
}

resource "google_compute_disk" "tfer--europe-west1-b-002F-gke-gke-abde-node-pool1-a5eb30e0-4lmp" {
  image                     = "https://www.googleapis.com/compute/v1/projects/gke-node-images/global/images/gke-1238-gke1900-cos-93-16623-227-1-v220715-c-pre"
  name                      = "gke-gke-abde-node-pool1-a5eb30e0-4lmp"
  physical_block_size_bytes = "4096"
  project                   = "endless-anagram-367719"
  provisioned_iops          = "0"
  size                      = "100"
  type                      = "pd-standard"
  zone                      = "europe-west1-b"
}

resource "google_compute_disk" "tfer--europe-west1-b-002F-gke-gke-abde-node-pool1-a5eb30e0-l4zz" {
  image                     = "https://www.googleapis.com/compute/v1/projects/gke-node-images/global/images/gke-1238-gke1900-cos-93-16623-227-1-v220715-c-pre"
  name                      = "gke-gke-abde-node-pool1-a5eb30e0-l4zz"
  physical_block_size_bytes = "4096"
  project                   = "endless-anagram-367719"
  provisioned_iops          = "0"
  size                      = "100"
  type                      = "pd-standard"
  zone                      = "europe-west1-b"
}

resource "google_compute_disk" "tfer--europe-west1-b-002F-mongo-db" {
  image                     = "https://www.googleapis.com/compute/v1/projects/ubuntu-os-pro-cloud/global/images/ubuntu-pro-1604-xenial-v20220810"
  name                      = "mongo-db"
  physical_block_size_bytes = "4096"
  project                   = "endless-anagram-367719"
  provisioned_iops          = "0"
  size                      = "10"
  type                      = "pd-balanced"
  zone                      = "europe-west1-b"
}

resource "google_compute_disk" "tfer--europe-west1-b-002F-pvc-4bcb0877-e6d6-42f5-8d21-52570791b8c9" {
  description               = "{\"kubernetes.io/created-for/pv/name\":\"pvc-4bcb0877-e6d6-42f5-8d21-52570791b8c9\",\"kubernetes.io/created-for/pvc/name\":\"wp-pv-claim\",\"kubernetes.io/created-for/pvc/namespace\":\"default\",\"storage.gke.io/created-by\":\"pd.csi.storage.gke.io\"}"
  name                      = "pvc-4bcb0877-e6d6-42f5-8d21-52570791b8c9"
  physical_block_size_bytes = "4096"
  project                   = "endless-anagram-367719"
  provisioned_iops          = "0"
  size                      = "20"
  type                      = "pd-standard"
  zone                      = "europe-west1-b"
}

resource "google_compute_disk" "tfer--europe-west1-b-002F-pvc-a0137660-5420-4af6-b62f-0e7b705766ab" {
  description               = "{\"kubernetes.io/created-for/pv/name\":\"pvc-a0137660-5420-4af6-b62f-0e7b705766ab\",\"kubernetes.io/created-for/pvc/name\":\"mysql-pv-claim\",\"kubernetes.io/created-for/pvc/namespace\":\"default\",\"storage.gke.io/created-by\":\"pd.csi.storage.gke.io\"}"
  name                      = "pvc-a0137660-5420-4af6-b62f-0e7b705766ab"
  physical_block_size_bytes = "4096"
  project                   = "endless-anagram-367719"
  provisioned_iops          = "0"
  size                      = "20"
  type                      = "pd-standard"
  zone                      = "europe-west1-b"
}
