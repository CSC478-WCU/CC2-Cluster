resource "cloudlab_portal_experiment" "cc2_cluster" {
  name            = "CampusConnect"
  wait_for_status = "ready"

  # kubeadm + worker1..workerN
  dynamic "rawpc" {
    for_each = toset(concat(
      ["kubeadm"],
      [for i in range(var.num_workers) : "worker${i + 1}"]
    ))
    content {
      name          = rawpc.key
      hardware_type = var.hardware_type
      aggregate     = var.aggregate_map[var.aggregate]
      exclusive     = true
      routable_ip   = true
    }
  }

  # LAN with all nodes
  lan {
    name = "lan0"

    dynamic "interface" {
      for_each = toset(concat(
        ["kubeadm"],
        [for i in range(var.num_workers) : "worker${i + 1}"]
      ))
      content {
        node = interface.key
      }
    }
  }
}
