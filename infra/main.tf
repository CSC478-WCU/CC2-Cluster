resource "cloudlab_portal_experiment" "CC2-Cluster" {
  name            = "CampusConnect"
  wait_for_status = "ready"

  rawpc {
    name          = "vm1"
    hardware_type = "d430"
    exclusive     = true
    routable_ip   = true
  }

  rawpc {
    name          = "vm2"
    hardware_type = "d430"
    exclusive     = true
    routable_ip   = true
  }

  rawpc {
    name          = "vm3"
    hardware_type = "d430"
    exclusive     = true
    routable_ip   = true
  }
  lan {
    name = "lan0"
    interface { node = "vm1" }
    interface { node = "vm2" }
    interface { node = "vm3" }
  }
}
