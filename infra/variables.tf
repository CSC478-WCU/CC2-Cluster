variable "aggregate" {
  description = "Aggregate short form (matches GH Actions choice)"
  type        = string
}

variable "hardware_type" {
  description = "Hardware type for rawpc nodes"
  type        = string
}

locals {
  aggregate_map = {
    "emulab.net"          = "urn:publicid:IDN+emulab.net+authority+cm"
    "utah.cloudlab.us"    = "urn:publicid:IDN+utah.cloudlab.us+authority+cm"
    "clemson.cloudlab.us" = "urn:publicid:IDN+clemson.cloudlab.us+authority+cm"
    "wisc.cloudlab.us"    = "urn:publicid:IDN+wisc.cloudlab.us+authority+cm"
    "apt.emulab.net"      = "urn:publicid:IDN+apt.emulab.net+authority+cm"
  }
}
