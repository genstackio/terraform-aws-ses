variable "types" {
  type    = list(string)
  default = []
}

variable "domain" {
  type = string
}

variable "topic_arn" {
  type = string
}

variable "include_original_headers" {
  type    = bool
  default = null
}