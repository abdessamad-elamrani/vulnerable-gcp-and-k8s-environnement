resource "google_project_iam_custom_role" "tfer--projects-002F-endless-anagram-367719-002F-roles-002F-CustomComputeStorageAdmin" {
  description = "Created on: 2022-11-08 Based on: Compute Storage Admin"
  permissions = ["compute.diskTypes.get", "compute.diskTypes.list", "compute.disks.addResourcePolicies", "compute.disks.create", "compute.disks.createSnapshot", "compute.disks.createTagBinding", "compute.disks.delete", "compute.disks.deleteTagBinding", "compute.disks.get", "compute.disks.getIamPolicy", "compute.disks.list", "compute.disks.listEffectiveTags", "compute.disks.listTagBindings", "compute.disks.removeResourcePolicies", "compute.disks.resize", "compute.disks.setIamPolicy", "compute.disks.setLabels", "compute.disks.update", "compute.disks.use", "compute.disks.useReadOnly", "compute.globalOperations.get", "compute.globalOperations.list", "compute.images.create", "compute.images.createTagBinding", "compute.images.delete", "compute.images.deleteTagBinding", "compute.images.deprecate", "compute.images.get", "compute.images.getFromFamily", "compute.images.getIamPolicy", "compute.images.list", "compute.images.listEffectiveTags", "compute.images.listTagBindings", "compute.images.setIamPolicy", "compute.images.setLabels", "compute.images.update", "compute.images.useReadOnly", "compute.licenseCodes.get", "compute.licenseCodes.getIamPolicy", "compute.licenseCodes.list", "compute.licenseCodes.setIamPolicy", "compute.licenseCodes.update", "compute.licenseCodes.use", "compute.licenses.create", "compute.licenses.delete", "compute.licenses.get", "compute.licenses.getIamPolicy", "compute.licenses.list", "compute.licenses.setIamPolicy", "compute.projects.get", "compute.regionOperations.get", "compute.regionOperations.list", "compute.regions.get", "compute.regions.list", "compute.resourcePolicies.create", "compute.resourcePolicies.delete", "compute.resourcePolicies.get", "compute.resourcePolicies.getIamPolicy", "compute.resourcePolicies.list", "compute.resourcePolicies.setIamPolicy", "compute.resourcePolicies.use", "compute.snapshots.create", "compute.snapshots.createTagBinding", "compute.snapshots.delete", "compute.snapshots.deleteTagBinding", "compute.snapshots.get", "compute.snapshots.getIamPolicy", "compute.snapshots.list", "compute.snapshots.listEffectiveTags", "compute.snapshots.listTagBindings", "compute.snapshots.setIamPolicy", "compute.snapshots.setLabels", "compute.snapshots.useReadOnly", "compute.zoneOperations.get", "compute.zoneOperations.list", "compute.zones.get", "compute.zones.list", "resourcemanager.projects.get", "serviceusage.quotas.get", "serviceusage.services.get", "serviceusage.services.list"]
  project     = "endless-anagram-367719"
  role_id     = "CustomComputeStorageAdmin"
  stage       = "GA"
  title       = "xxx-storage-abde"
}

resource "google_project_iam_custom_role" "tfer--projects-002F-endless-anagram-367719-002F-roles-002F-CustomLucidscaleCustomRole" {
  description = "Created on: 2022-11-07 Based on: Lucidscale Custom Role"
  permissions = ["bigquery.datasets.get", "bigtable.appProfiles.list", "bigtable.backups.list", "bigtable.clusters.list", "bigtable.instances.list", "bigtable.tables.list", "cloudfunctions.functions.list", "cloudsql.instances.list", "compute.autoscalers.list", "compute.backendBuckets.list", "compute.backendServices.list", "compute.disks.list", "compute.firewalls.list", "compute.forwardingRules.list", "compute.instanceGroups.get", "compute.instanceGroups.list", "compute.instances.list", "compute.networks.list", "compute.projects.get", "compute.regionUrlMaps.list", "compute.regions.list", "compute.routers.list", "compute.routes.list", "compute.subnetworks.list", "compute.targetHttpProxies.get", "compute.targetHttpProxies.list", "compute.targetHttpsProxies.list", "compute.urlMaps.list", "compute.vpnGateways.list", "container.clusters.list", "dns.managedZones.list", "iam.roles.get", "iam.roles.list", "resourcemanager.projects.get", "storage.buckets.list"]
  project     = "endless-anagram-367719"
  role_id     = "CustomLucidscaleCustomRole"
  stage       = "ALPHA"
  title       = "Lucid2-Role"
}

resource "google_project_iam_custom_role" "tfer--projects-002F-endless-anagram-367719-002F-roles-002F-CustomRole" {
  description = "Created on: 2022-11-08"
  permissions = ["compute.disks.create", "compute.disks.list", "compute.images.useReadOnly"]
  project     = "endless-anagram-367719"
  role_id     = "CustomRole"
  stage       = "ALPHA"
  title       = "compute-rule-custo"
}

resource "google_project_iam_custom_role" "tfer--projects-002F-endless-anagram-367719-002F-roles-002F-lucidrole" {
  description = "Lucidscale Custom Role"
  permissions = ["bigquery.datasets.get", "bigtable.appProfiles.list", "bigtable.backups.list", "bigtable.clusters.list", "bigtable.instances.list", "bigtable.tables.list", "cloudfunctions.functions.list", "cloudsql.instances.list", "compute.autoscalers.list", "compute.backendBuckets.list", "compute.backendServices.list", "compute.disks.list", "compute.firewalls.list", "compute.forwardingRules.list", "compute.instanceGroups.get", "compute.instanceGroups.list", "compute.instances.list", "compute.networks.list", "compute.projects.get", "compute.regionUrlMaps.list", "compute.regions.list", "compute.routers.list", "compute.routes.list", "compute.subnetworks.list", "compute.targetHttpProxies.get", "compute.targetHttpProxies.list", "compute.targetHttpsProxies.list", "compute.urlMaps.list", "compute.vpnGateways.list", "container.clusters.list", "dns.managedZones.list", "iam.roles.get", "iam.roles.list", "resourcemanager.projects.get", "storage.buckets.list"]
  project     = "endless-anagram-367719"
  role_id     = "lucidrole"
  stage       = "ALPHA"
  title       = "Lucidscale Custom Role"
}
