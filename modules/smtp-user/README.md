# AWS SES SMTP User Terraform module

Terraform module which creates SES smtp user on AWS.

## Usage

```hcl
module "ses-smtp-user" {
  source = "genstackio/ses/aws//modules/smtp-user"
  
  // ...
}
```
