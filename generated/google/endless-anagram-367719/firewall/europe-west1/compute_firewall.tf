resource "google_compute_firewall" "tfer--default-allow-icmp" {
  allow {
    protocol = "icmp"
  }

  description   = "Allow ICMP from anywhere"
  direction     = "INGRESS"
  disabled      = "false"
  name          = "default-allow-icmp"
  network       = "https://www.googleapis.com/compute/v1/projects/endless-anagram-367719/global/networks/default"
  priority      = "65534"
  project       = "endless-anagram-367719"
  source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_firewall" "tfer--default-allow-internal" {
  allow {
    ports    = ["0-65535"]
    protocol = "tcp"
  }

  allow {
    ports    = ["0-65535"]
    protocol = "udp"
  }

  allow {
    protocol = "icmp"
  }

  description   = "Allow internal traffic on the default network"
  direction     = "INGRESS"
  disabled      = "false"
  name          = "default-allow-internal"
  network       = "https://www.googleapis.com/compute/v1/projects/endless-anagram-367719/global/networks/default"
  priority      = "65534"
  project       = "endless-anagram-367719"
  source_ranges = ["10.128.0.0/9"]
}

resource "google_compute_firewall" "tfer--default-allow-rdp" {
  allow {
    ports    = ["3389"]
    protocol = "tcp"
  }

  description   = "Allow RDP from anywhere"
  direction     = "INGRESS"
  disabled      = "false"
  name          = "default-allow-rdp"
  network       = "https://www.googleapis.com/compute/v1/projects/endless-anagram-367719/global/networks/default"
  priority      = "65534"
  project       = "endless-anagram-367719"
  source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_firewall" "tfer--default-allow-ssh" {
  allow {
    ports    = ["22"]
    protocol = "tcp"
  }

  description   = "Allow SSH from anywhere"
  direction     = "INGRESS"
  disabled      = "false"
  name          = "default-allow-ssh"
  network       = "https://www.googleapis.com/compute/v1/projects/endless-anagram-367719/global/networks/default"
  priority      = "65534"
  project       = "endless-anagram-367719"
  source_ranges = ["0.0.0.0/0"]
}
