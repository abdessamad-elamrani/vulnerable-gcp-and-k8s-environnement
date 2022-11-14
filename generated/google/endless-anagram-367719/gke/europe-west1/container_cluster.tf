resource "google_container_cluster" "tfer--gke-abde" {
  addons_config {
    dns_cache_config {
      enabled = "false"
    }

    gce_persistent_disk_csi_driver_config {
      enabled = "true"
    }

    horizontal_pod_autoscaling {
      disabled = "false"
    }

    http_load_balancing {
      disabled = "false"
    }

    network_policy_config {
      disabled = "true"
    }
  }

  binary_authorization {
    enabled         = "false"
    evaluation_mode = "DISABLED"
  }

  cluster_autoscaling {
    enabled = "false"
  }

  cluster_ipv4_cidr = "10.72.0.0/14"

  database_encryption {
    state = "DECRYPTED"
  }

  datapath_provider         = "LEGACY_DATAPATH"
  default_max_pods_per_node = "110"

  default_snat_status {
    disabled = "false"
  }

  enable_binary_authorization = "false"
  enable_intranode_visibility = "false"
  enable_kubernetes_alpha     = "false"
  enable_legacy_abac          = "false"
  enable_shielded_nodes       = "true"
  enable_tpu                  = "false"
  initial_node_count          = "0"

  ip_allocation_policy {
    cluster_ipv4_cidr_block  = "10.72.0.0/14"
    services_ipv4_cidr_block = "10.76.0.0/20"
  }

  location = "europe-west1-b"

  logging_config {
    enable_components = ["SYSTEM_COMPONENTS", "WORKLOADS"]
  }

  logging_service = "logging.googleapis.com/kubernetes"

  master_auth {
    client_certificate_config {
      issue_client_certificate = "false"
    }
  }

  monitoring_config {
    enable_components = ["SYSTEM_COMPONENTS"]
  }

  monitoring_service = "monitoring.googleapis.com/kubernetes"
  name               = "gke-abde"
  network            = "projects/endless-anagram-367719/global/networks/abde-vpc"

  network_policy {
    enabled  = "false"
    provider = "PROVIDER_UNSPECIFIED"
  }

  networking_mode = "VPC_NATIVE"
  node_version    = "1.23.8-gke.1900"

  notification_config {
    pubsub {
      enabled = "false"
    }
  }

  private_cluster_config {
    enable_private_endpoint = "false"
    enable_private_nodes    = "false"

    master_global_access_config {
      enabled = "false"
    }
  }

  project = "endless-anagram-367719"

  release_channel {
    channel = "REGULAR"
  }

  service_external_ips_config {
    enabled = "false"
  }

  subnetwork = "projects/endless-anagram-367719/regions/europe-west1/subnetworks/private-subnet1"
}
