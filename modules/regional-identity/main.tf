resource "aws_ses_domain_identity" "identity" {
  domain = var.domain
}

resource "aws_ses_email_identity" "identities" {
  for_each = var.emails
  email    = "${each.value}@${var.domain}"
}

resource "aws_ses_identity_policy" "policy" {
  count    = local.need_policy ? 1 : 0
  identity = aws_ses_domain_identity.identity.arn
  name     = "${var.name}-policy"
  policy   = local.need_policy ? data.aws_iam_policy_document.policy[0].json : null
}