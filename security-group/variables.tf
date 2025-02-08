variable "port_list" {
  type = list(number)
  default = [ "8200","8201" ]
}

variable "allowed_all_ip" {
  type = string
  default = "0.0.0.0/0"
}