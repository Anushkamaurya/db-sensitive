#source  = "hashicorp/google"
#version = "3.5.0"
project = "sre-demo-357111"
region  = "asia-south1"
zone    = "asia-south1-a"
vm_name	= "myinstance1"
machine_type = "e2-medium"
network = "terra-network"
subnetwork = "terra-subnetwork"
firewall = "terra-firewall"
ip_cidr_range = "192.168.0.0/20"
// gcp_credentials = "C:/Users/anushka.verma.maurya/Downloads/sre-demo-357111-3cf9c3db3a79.json"
project_name    =       "sre-demo"
bucket_name = "pot2_bucket" 
bucket_location = "europe-west2"
bucket_force_destroy    =       true
// project_sa_name = ""
billing_account = "My Billing Account"
project_services  =       [
        "storage.googleapis.com",
        "cloudresourcemanager.googleapis.com",
        "compute.googleapis.com",
        "iam.googleapis.com",
        "serviceusage.googleapis.com",
        "storage-component.googleapis.com",
        "cloudbilling.googleapis.com"
      ] 