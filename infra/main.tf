resource "cloudlab_portal_experiment" "CC2-Cluster" {
  name            = "CampusConnect"
  wait_for_status = "ready"

  xenvm {
    name           = "vm1"
    cores          = 2
    ram_mb         = 4096
    disk_gb        = 20
    routable_ip    = true
  }

  xenvm {
    name           = "vm2"
    cores          = 2
    ram_mb         = 4096
    disk_gb        = 20
    routable_ip    = true
  }

  xenvm {
    name           = "vm3"
    cores          = 2
    ram_mb         = 4096
    disk_gb        = 20
    routable_ip    = true
  }

  lan {
    name = "lan0"
    interface { node = "vm1" }
    interface { node = "vm2" }
    interface { node = "vm3" }
  }
}