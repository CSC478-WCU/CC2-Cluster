terraform {
  required_providers {
    cloudlab = {
      source  = "csc478-wcu/cloudlab"
      version = "1.0.4"
    }
  }
}


provider "cloudlab" {
  project  = "cloud-edu"
  server   = "boss.emulab.net"
  pem_path = "./cloudlab_decrypted.pem"
  port     = 3069
  path     = "/usr/testbed"
  timeout  = "30m"
}
