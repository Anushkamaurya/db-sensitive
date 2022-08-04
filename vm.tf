resource "google_compute_network" "terra_vpc_network" {
  name                    = var.network
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "terra_subnet" {
  name          = var.subnetwork
  ip_cidr_range = var.ip_cidr_range
  region        = var.region
  network       = google_compute_network.terra_vpc_network.id
  depends_on    = [google_compute_network.terra_vpc_network]
 
}

resource "google_compute_firewall" "terra_firewall" {
  name    = var.firewall
  network = google_compute_network.terra_vpc_network.name
  depends_on    = [google_compute_subnetwork.terra_subnet]

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }
  source_tags = ["learning"]
}
resource "google_compute_instance" "vm_instance" {
  name         = var.vm_name
  machine_type = var.machine_type
  depends_on    = [google_compute_firewall.terra_firewall]

  boot_disk {
    initialize_params {
      image = "debian-10-buster-v20211105"
    }
  }

  network_interface {
    network    =  var.network
    subnetwork =  var.subnetwork
    access_config {
    }
  }
}
