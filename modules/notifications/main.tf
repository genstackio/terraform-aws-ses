resource "aws_ses_identity_notification_topic" "notifications" {
  for_each = { for k,v in var.types: v => true}
  topic_arn                = var.topic_arn
  notification_type        = each.key
  identity                 = var.domain
  include_original_headers = null != var.include_original_headers ? var.include_original_headers : false
}