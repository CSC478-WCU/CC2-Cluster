variable "aggregate" {
  description = "Aggregate short form (matches GH Actions choice)"
  type        = string
}

variable "hardware_type" {
  description = "Hardware type for rawpc nodes"
  type        = string
}

variable "num_workers" {
  description = "Number of worker nodes to create"
  type        = number
  default     = 2
  validation {
    condition     = var.num_workers >= 1 && var.num_workers <= 20
    error_message = "num_workers must be between 1 and 20."
  }
}

variable "aggregate_map" {
  description = "Map aggregate short names to URNs"
  type        = map(string)
  default = {
    "emulab.net"          = "urn:publicid:IDN+emulab.net+authority+cm"
    "utah.cloudlab.us"    = "urn:publicid:IDN+utah.cloudlab.us+authority+cm"
    "clemson.cloudlab.us" = "urn:publicid:IDN+clemson.cloudlab.us+authority+cm"
    "wisc.cloudlab.us"    = "urn:publicid:IDN+wisc.cloudlab.us+authority+cm"
    "apt.emulab.net"      = "urn:publicid:IDN+apt.emulab.net+authority+cm"
  }
}
