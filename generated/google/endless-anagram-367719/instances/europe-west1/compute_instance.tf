resource "google_compute_instance" "tfer--attacker-1" {
  boot_disk {
    auto_delete = "true"
    device_name = "attacker"
    mode        = "READ_WRITE"
    source      = "https://www.googleapis.com/compute/v1/projects/endless-anagram-367719/zones/europe-west1-b/disks/attacker-1"
  }

  can_ip_forward = "false"

  confidential_instance_config {
    enable_confidential_compute = "false"
  }

  deletion_protection = "false"
  enable_display      = "false"
  machine_type        = "e2-micro"

  metadata = {
    ssh-keys = "elamrani_abdessamad:ecdsa-sha2-nistp256 AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBNgZ42plqXaDBLt0DS4RAAeEej8SPZRNpDspo4cwcSAIRSop8YYCZd+oOqpjCfufnKxCsqWwEiKUxlXrC9mBZIM= google-ssh {\"userName\":\"elamrani.abdessamad@gmail.com\",\"expireOn\":\"2022-11-14T20:58:14+0000\"}\nelamrani_abdessamad:ecdsa-sha2-nistp256 AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBAaJJU1ia2qfEqJtjP0VWe2fwP55fgpPGqk8JQIWXanBWOm6OCoh/B1jsuEospBQx2/D4EupkfxNvqo7mLo+CG4= google-ssh {\"userName\":\"elamrani.abdessamad@gmail.com\",\"expireOn\":\"2022-11-14T20:58:19+0000\"}\nelamrani_abdessamad:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCICqhtgcu5O29LuHbmuCnFVSOpa0RhTxxlupl/3Ahm4mvojSqKGUJeDImsEbK1f4bXtvJLA1Gp4TDiPE2Q3larcijZiNNKZ25Uv2XkjZ7Nc6Ql63qyJeP/e4tRY9u2z2bHhL9mRJupBu8RlTYinzHLTg+GN1zz44NUzXojNm2iDqLlzrIcl8ow9FPV/acNh4TkXLpwTyg00vF4RYApCYJNzg5AYPDIbi8ijafu03lgVBqLQYYExCHHhQ32uFK7l9WwfVJIpxUh+X3uoDmacpnck7B58yru3cGeqJT8GY7VX/lkJGW353VNoyPy8XL/AUUDXoOJK6RdZrGXOppMOKOt google-ssh {\"userName\":\"elamrani.abdessamad@gmail.com\",\"expireOn\":\"2022-11-14T20:59:14+0000\"}"
  }

  name = "attacker-1"

  network_interface {
    access_config {
      nat_ip       = "35.195.214.149"
      network_tier = "PREMIUM"
    }

    network            = "https://www.googleapis.com/compute/v1/projects/endless-anagram-367719/global/networks/abde-vpc"
    network_ip         = "10.99.2.11"
    queue_count        = "0"
    stack_type         = "IPV4_ONLY"
    subnetwork         = "https://www.googleapis.com/compute/v1/projects/endless-anagram-367719/regions/europe-west1/subnetworks/private-subnet1"
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
    email  = "4533191612-compute@developer.gserviceaccount.com"
    scopes = ["https://www.googleapis.com/auth/devstorage.read_only", "https://www.googleapis.com/auth/logging.write", "https://www.googleapis.com/auth/monitoring.write", "https://www.googleapis.com/auth/service.management.readonly", "https://www.googleapis.com/auth/servicecontrol", "https://www.googleapis.com/auth/trace.append"]
  }

  shielded_instance_config {
    enable_integrity_monitoring = "true"
    enable_secure_boot          = "false"
    enable_vtpm                 = "true"
  }

  zone = "europe-west1-b"
}

resource "google_compute_instance" "tfer--mongo-db" {
  boot_disk {
    auto_delete = "true"
    device_name = "ubuntu-pro-xenial-1"
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
    ssh-keys       = "elamrani_abdessamad:ecdsa-sha2-nistp256 AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBEzs03cOGaDXdq4rWEs5QSDj8uYn0PYuH/92gShDnLA/lVU8aEReLaDcbtGZzR+YM3KfIqu2L2xuM9LcMfwC0Mo= google-ssh {\"userName\":\"elamrani.abdessamad@gmail.com\",\"expireOn\":\"2022-11-14T22:42:59+0000\"}\nelamrani_abdessamad:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAGJNiCL4ZJ1tlJFFIZcwsNtrp8FJ4ujyrLT6CU1v7D05AEg4IF4+VOA9RNijFhHbarO0IceQOsmCmuU4ogamdqsAniebEdCTU7+0GuuzCC1nwHwwlZpMIIZzMXf5hzgVky1I9RUbi28U8/nd6TMgCfG5Sycx8JnitWwhcUtXV8gTxhugbxbFGcidr999ysCTzFTMyyzTy7iAOOdca5NtI4AlWwn9AHWEZ24zPwEd4RnShYbb/mBHnG8cl0wlZvYggowy8H/Fb/hdkbb61KrHFEm4GhcSVfXx5HvCdrzThg8+IDtSNbpSiaRU/mgDWrmki6Wa1BKA9++Y2FYH2QJ3gKM= google-ssh {\"userName\":\"elamrani.abdessamad@gmail.com\",\"expireOn\":\"2022-11-14T22:43:13+0000\"}"
    startup-script = "\n#!/bin/bash\n\n#### cleanup\n\napt-get purge -y mongo* --allow-change-held-packages\n\n#### installing mangodb 4.0 on ubuntu 16.04\n#### https://www.mongodb.com/docs/v4.0/tutorial/install-mongodb-on-ubuntu/\n\nwget -qO - https://www.mongodb.org/static/pgp/server-4.0.asc | sudo apt-key add -\necho \"deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/4.0 multiverse\" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.0.list\nsudo apt-get update\nsudo apt-get install -y mongodb-org\necho \"mongodb-org hold\" | sudo dpkg --set-selections\necho \"mongodb-org-server hold\" | sudo dpkg --set-selections\necho \"mongodb-org-shell hold\" | sudo dpkg --set-selections\necho \"mongodb-org-mongos hold\" | sudo dpkg --set-selections\necho \"mongodb-org-tools hold\" | sudo dpkg --set-selections\nsudo systemctl start mongod\nsudo systemctl daemon-reload\nsudo systemctl enable mongod\nsleep 60\n### enable authentication \n### https://www.mongodb.com/features/mongodb-authentication\n### auth from iinside after creating user : db.auth(myadmin4,password1)\n## following way doesnt work for some reason with mongodump so I will create only remote admin this way, and later with JSON the one for mongodb..\n\nmongo --eval \"db.createUser( { user: 'localadmin', pwd: 'password1', roles: [ { role: 'userAdminAnyDatabase',db: 'admin' },{ role: 'backup',db: 'admin' }  ] })\" \n\n#mongo --eval \"db.createUser( { user: 'myadmin7', pwd: 'password2', roles: [ {role: 'readWrite', db: 'admin'}] })\"    \n\necho '\ndb.createUser(\n  {\n    user: \"opadmin\",\n    pwd: \"password1\",\n    roles: [ { role: \"userAdminAnyDatabase\",db: \"admin\" },{ role: \"backup\",db: \"admin\" }  ]\n  }\n)\n' > myadmin.js\n\nsleep 60\n\nmongo admin myadmin.js\n\nsudo sh -c 'echo \"security:\\n  authorization : enabled\" >> /etc/mongod.conf'\nsudo sed -i \"s,\\\\(^[[:blank:]]*bindIp:\\\\) .*,\\\\1 0.0.0.0,\" /etc/mongod.conf\nsudo systemctl restart mongod\n\n#### dumping backup\n\n#creating backupcron bash file that takes backup and uploade to storage backet\n\necho 'DATE=`date +%Y-%d%b-%Hh%Mm`\n/usr/bin/mongodump -u opadmin -p password1\nmv dump mongodump-$DATE\ntar cf mongodump-$DATE.tar mongodump-$DATE\n\n#### >>> \n/snap/bin/gsutil cp mongodump-$DATE.tar gs://abde-storage-bucket\n\nrm -rf mongodump*' > /backupcron.bash\n\nchmod 755 /backupcron.bash\n\n# adding entry to cronjob\necho '*/30 * * * * /bin/bash /backupcron.bash' > /mycron\n\n# careful for ubntu 18 its under /usr/bin/crontab not /bin\n/usr/bin/crontab /mycron\n"
  }

  name = "mongo-db"

  network_interface {
    access_config {
      nat_ip       = "34.140.217.19"
      network_tier = "PREMIUM"
    }

    network            = "https://www.googleapis.com/compute/v1/projects/endless-anagram-367719/global/networks/abde-vpc"
    network_ip         = "10.99.1.17"
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
    email  = "xx-compute-sa@endless-anagram-367719.iam.gserviceaccount.com"
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
