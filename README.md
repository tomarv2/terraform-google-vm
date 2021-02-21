[![](https://img.shields.io/badge/license-Apache%202-blue.svg)](https://www.apache.org/licenses/LICENSE-2.0)

# terraform-google-vm
Terraform module for GCP VM

## How to use?

Recommended method:

- Create python 3.6+ virtual environment 
```
python3 -m venv <venv name>
```

- Install package:
```
pip install tfremote
```

- Set below environment variables:
```
export TF_GCLOUD_BUCKET=<remote state bucket name>
export TF_GCLOUD_PREFIX=<remote state bucket prefix>
export TF_GCLOUD_CREDENTIALS=<gcp credentials.json>
export TF_GCLOUD_CREDENTIALS=<gcp credentials.json>
```  

- Change to: 
```
example/custom/sample.tfvars
```

- Following entries are required:

```
- account_id
- function_name
- role_arn
- source_file (relative path to the base directory or provide absolute path)
- output_file_path
- teamid
- prjid
```

- Change to: 
```
example/base 
``` 

- Run and verify the output before deploying:
```
tf -cloud gcloud plan -var-file <path to .tfvars file>
```

- Run below to deploy:
```
tf -cloud gcloud apply -var-file <path to .tfvars file>
```

- Run below to destroy:
```
tf -cloud gcloud destroy -var-file <path to .tfvars file>
```

**NOTE:** 

- Read more on [tfremote](https://github.com/tomarv2/tfremote) 
- I will not be pinning the main branch to keep up with Terraform releases, for deployments please
use the latest tag versions which have versions pinned for stability.
  
## Providers

| Name | Version |
|------|---------|
| google | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| auto\_create\_subnetworks | n/a | `string` | `"true"` | no |
| credentials | n/a | `string` | `"~/.gcloud/credentials.json"` | no |
| delete\_default\_routes\_on\_create | n/a | `string` | `"false"` | no |
| email | email address to be used for tagging (suggestion: use group email address) | `any` | n/a | yes |
| gcp\_project | gcp project to use | `any` | n/a | yes |
| mtu | n/a | `string` | `"1460"` | no |
| prjid | (Required) Name of the project/stack e.g: mystack, nifieks, demoaci. Should not be changed after running 'tf apply' | `any` | n/a | yes |
| routing\_mode | n/a | `string` | `"REGIONAL"` | no |
| set\_region | n/a | `string` | `"us-west1"` | no |
| set\_zone | set zone | `string` | `"us-west1-a"` | no |
| teamid | (Required) Name of the team/group e.g. devops, dataengineering. Should not be changed after running 'tf apply' | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| vpc\_id | vpc id |
| vpc\_self\_link | vpc self link |

