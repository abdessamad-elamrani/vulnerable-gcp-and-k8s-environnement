resource "google_compute_instance" "tfer--mongo-db" {
  boot_disk {
    auto_delete = "true"
    device_name = "mongo-db"
    mode        = "READ_WRITE"
    source      = "https://www.googleapis.com/compute/v1/projects/endless-anagram-367719/zones/europe-west1-b/disks/mongo-db"
  }

  can_ip_forward = "false"

  confidential_instance_config {
    enable_confidential_compute = "false"
  }

  deletion_protection = "false"
  enable_display      = "false"
  machine_type        = "e2-micro"

  metadata = {
    ssh-keys       = "elamrani_abdessamad:ecdsa-sha2-nistp256 AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBBJroFgGAZoE7/8ak3zZ9pCm40krXfON2/ouzQelt0wxUdXEnmyXcQEAb8KXUREYLoZOTCSvDdj53bZ8CVAIac8= google-ssh {\"userName\":\"elamrani.abdessamad@gmail.com\",\"expireOn\":\"2022-11-07T16:21:12+0000\"}\nelamrani_abdessamad:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCV/cJVa3ScWIkiuwRooD73g2S5rMa6tBoVXcS3vnNMNpNwqNY7UAnqUv8UmVx3H1Phvpbhhylwdr8mSNGjBZQ1p3zYbOiicB8b+0CjW4uoaiL0M7Bvn8iDEuWNXUcMB9Fg2zX+VP5yj/YVFSBRwpS9D1QgY2mAGmMbzWXlgfGRbLdiZUyJIy4ZLL3wFomWgN89I4yR3X09uwdXAabRNHT5abmhE524lCepFIrLAnbiNuzhYlW0UHPtzvLNDjmFdgd67MWnqXmL3l2sJ8YZWn9HFXWbOiWJBdYCXpt38aU4ootWFqentjvI8bQ9HqqYfwFC2oaOc39xYqub+fW3IxJD google-ssh {\"userName\":\"elamrani.abdessamad@gmail.com\",\"expireOn\":\"2022-11-07T16:21:26+0000\"}"
    startup-script = "#!/bin/bash\n\n#### installing mangodb \n\nwget -qO - https://www.mongodb.org/static/pgp/server-6.0.asc | sudo apt-key add -\necho \"deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/6.0 multiverse\" | sudo tee /etc/apt/sources.list.d/mongodb-org-6.0.list\nsudo apt-get update\napt-get install -y mongodb-org\necho \"mongodb-org hold\" | dpkg --set-selections\necho \"mongodb-org-database hold\" | dpkg --set-selections\necho \"mongodb-org-server hold\" | dpkg --set-selections\necho \"mongodb-mongosh hold\" | dpkg --set-selections\necho \"mongodb-org-mongos hold\" | dpkg --set-selections\necho \"mongodb-org-tools hold\" | dpkg --set-selections\nsystemctl start mongod\nsystemctl enable mongod\necho '\ndb.createUser(\n  {\n    user: \"myadmin\",\n    pwd: \"1Mongomongo!!\",\n    roles: [ { role: \"userAdminAnyDatabase\",db: \"admin\" },{ role: \"backup\",db: \"admin\" }  ]\n  }\n)\n' > /home/ubuntu/file_admin.js\necho '\ndb.createUser(\n{\n    user: \"myreader\",\n    pwd: \"1Mongomongo!\",\n    roles: [ { role: \"read\",db: \"admin\" } ]\n  }\n)\n' > /home/ubuntu/file_reader.js\nmongosh admin /home/ubuntu/file_admin.js\nmongosh admin /home/ubuntu/file_reader.js\nsh -c 'echo \"security:\\n  authorization : enabled\" >> /etc/mongod.conf'\nsed -i \"s,\\\\(^[[:blank:]]*bindIp:\\\\) .*,\\\\1 0.0.0.0,\" /etc/mongod.conf\nsystemctl restart mongod\n\n#### dumping backup\n\n#creating backupcron bash file that takes backup and uploade to storage backet\n\necho 'DATE=`date +%Y-%d%b-%Hh%Mm`\n/bin/mongodump -u myadmin -p 1Mongomongo!\nmv dump /mongodump-$DATE\ntar cf  /mongodump-$DATE.tar /mongodump-$DATE\n\n#### >>> \n/snap/bin/gsutil cp /mongodump-$DATE.tar gs://abde-storage-bucket\n\nrm -rf mongodump*' > /backupcron.bash\n\nchmod 755 *\n\n# adding entry to cronjob\necho '*/10 * * * * /bin/bash /backupcron.bash' > /mycron\n\n# careful for ubntu 18 its under /usr/bin/crontab not /bin\n/usr/bin/crontab /mycron\n## done"
  }

  name = "mongo-db"

  network_interface {
    access_config {
      nat_ip       = "34.78.179.219"
      network_tier = "PREMIUM"
    }

    network            = "https://www.googleapis.com/compute/v1/projects/endless-anagram-367719/global/networks/abde-vpc"
    network_ip         = "10.99.1.4"
    queue_count        = "0"
    stack_type         = "IPV4_ONLY"
    subnetwork         = "https://www.googleapis.com/compute/v1/projects/endless-anagram-367719/regions/europe-west1/subnetworks/public-subnet"
    subnetwork_project = "endless-anagram-367719"
  }

  project = "endless-anagram-367719"

  reservation_affinity {
    type = "ANY_RESERVATION"
  }

  scheduling {
    automatic_restart   = "true"
    min_node_cpus       = "0"
    on_host_maintenance = "MIGRATE"
    preemptible         = "false"
    provisioning_model  = "STANDARD"
  }

  service_account {
    email  = "mybackup-sa@endless-anagram-367719.iam.gserviceaccount.com"
    scopes = ["https://www.googleapis.com/auth/cloud-platform"]
  }

  shielded_instance_config {
    enable_integrity_monitoring = "true"
    enable_secure_boot          = "false"
    enable_vtpm                 = "true"
  }

  tags = ["http-server", "https-server"]
  zone = "europe-west1-b"
}
