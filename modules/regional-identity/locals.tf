locals {
  region      = data.aws_region.current.name
  need_policy = (0 < length(null == var.service_sources ? [] : var.service_sources)) || (0 < length(null == var.sources ? [] : var.sources))
}