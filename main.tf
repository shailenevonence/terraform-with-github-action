resource "google_compute_instance" "terraform" {
  project      = "${{ secrets.PROJECT_ID }}"
  name         = "terraform-git"
  machine_type = "n1-standard-1"
  zone         = "${{ secrets.GCP_ZONE }}"
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
