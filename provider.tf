provider "aws" {
  region = "us-east-1"

}

provider "google" {
  region      = "us-east1"
  zone        = "us-east1-a"
  credentials = file("/home/custom-autumn-273001.json")
  project     = "custom-autumn-273001"
}

