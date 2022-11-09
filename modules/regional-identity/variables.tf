variable "name" {
  type = string
}
variable "domain" {
  type = string
}
variable "zone" {
  type    = string
  default = null
}
variable "emails" {
  type    = map(string)
  default = {}
}
variable "sources" {
  type    = list(string)
  default = []
}
variable "service_sources" {
  type    = list(string)
  default = []
}
