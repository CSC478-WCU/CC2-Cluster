resource "cloudlab_portal_experiment" "CC2-Cluster" {
  name            = "CampusConnect"
  wait_for_status = "ready"

  rawpc {
    name          = "kubeadm"
    hardware_type = "d430"
    exclusive     = true
    routable_ip   = true
  }

  rawpc {
    name          = "worker1"
    hardware_type = "d430"
    exclusive     = true
    routable_ip   = true
  }

  rawpc {
    name          = "worker2"
    hardware_type = "d430"
    exclusive     = true
    routable_ip   = true
  }
  lan {
    name = "lan0"
    interface { node = "kubeadm" }
    interface { node = "worker1" }
    interface { node = "worker2" }
  }
}
