# jenkins-tf-demo

## Prerequisites

First you need to build the jenkins image. You can run following script:
```sh
sh ./packer/build.sh
```

To get the image name run following command:
```sh
export TF_VAR_image=$(linode-cli images list | grep jenkins-tf-demo | awk '{print $2}')
```

Export the linode API key via a env var.Like:
```sh
export TF_VAR_token=<YOUR_KEY_HERE>
```

## Run the jenkins VM

Confirm that the env vars are set correctly:
```sh
echo $TF_VAR_token && echo $TF_VAR_image
```

Check if _terraform_ finds any errors:
```sh
terraform plan
```

If no errors were found you can apply the configuration:
```sh
terraform apply
```

