resource "google_compute_instance" "terraform" {
  project      = var.project_id
  name         = "terraform-git"
  machine_type = "n1-standard-1"
  zone         = var.gcp_zone
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10"
    }
  }
  network_interface {
    network = "default"
    access_config {
    }
  }
}
