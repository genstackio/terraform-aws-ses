# AWS SES Regional Identity Terraform module

Terraform module which creates SES regional identity on AWS.

## Usage

```hcl
module "ses-regional-identity" {
  source = "genstackio/ses/aws//modules/regional-identity"
  
  // ...
}
```
