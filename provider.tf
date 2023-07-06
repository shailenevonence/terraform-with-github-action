provider "google" {
  project = '${{ secrets.PROJECT_ID }}'
  region  = '${{ secrets.GCP_REGION }}'
}
