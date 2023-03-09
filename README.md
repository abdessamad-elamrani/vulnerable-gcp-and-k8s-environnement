# vulnerable-gcp-and-k8s-environnement

a vulnerable GCP K8S terraform envrionnement that can be used to test CSPM/CWP, and other Security tools in the Cloud

# to run into GCP 

1) download all directories

2) go inside each directory , and run following

terraform init
terraform plan 
terraform apply

3) You can try to create even more vulnerabilites by using metasploit and try to get into the Containers and Databses in this deployment, hence verify if your security posture tools or CSPM / CWP can detect!

Note:
+ Do deployment in order of the files in the Repo
+ You need to connect your linux to your GCP beforehand, and authenticate
check this if not done already:
https://cloud.google.com/sdk/gcloud
