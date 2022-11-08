provider "google" {
  project = "endless-anagram-367719"
}

terraform {
	required_providers {
		google = {
	    version = "~> 4.42.1"
		}
  }
}
