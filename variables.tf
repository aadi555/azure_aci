variable "container_group_name" { }

variable "resource_group_name" { }

variable "location" { }

variable "dns_name_label" { }

variable "os_type" {
  default   = "linux"
  description   = "The type of container os"
  }

variable "container_name" { }

variable "image_name" { }

variable "cpu_core_number" {
  default       = "1"  
  description   = "The required number of CPU cores of the containers"
}

variable "memory_size" {
  default       = "2"  
  description   = "The required memory of the containers in GB"
}

variable "port_number" {
  default       = "22"  
  description   = "A public port for the container"
}
variable "restart_policy" { 
  default  = "onFailure"
  description = "Container to restart the based the specified defaults"
}
variable "app_name" { }

variable "env_name" { }
