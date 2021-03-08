data "aws_region" "current" {}

data "aws_iam_policy_document" "policy" {
  count = local.need_policy ? 1 : 0
  dynamic "statement" {
    for_each = (0 < length(var.sources)) ? [var.sources] : []
    content {
      actions   = [
        "ses:SendEmail",
        "ses:SendTemplatedEmail",
        "ses:SendRawEmail",
        "ses:SendBulkTemplatedEmail",
      ]
      resources = [aws_ses_domain_identity.identity.arn]
      condition {
        test = "ArnEquals"
        variable = "aws:SourceArn"
        values = statement.value
      }
      effect = "Allow"
      principals {
        type = "AWS"
        identifiers = ["*"]
      }
    }
  }
  dynamic "statement" {
    for_each = (0 < length(var.service_sources)) ? [var.service_sources] : []
    content {
      actions   = [
        "ses:SendEmail",
        "ses:SendTemplatedEmail",
        "ses:SendRawEmail",
        "ses:SendBulkTemplatedEmail",
      ]
      resources = [aws_ses_domain_identity.identity.arn]
      effect = "Allow"
      principals {
        type = "Service"
        identifiers = var.service_sources
      }
    }
  }
}