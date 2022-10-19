# AWS SES Notifications Terraform module

Terraform module which creates SES notifications on AWS.

## Usage

```hcl
module "ses-notifications" {
  source = "genstackio/ses/aws//modules/notifications"
  
  // ...
}
```
