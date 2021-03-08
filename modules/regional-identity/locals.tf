locals {
  region      = data.aws_region.current.name
  need_policy = (0 < length(var.service_sources)) || (0 < length(var.sources))
}