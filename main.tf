variable token {}
variable image {}

provider "linode" {
    token = var.token
}

resource "linode_instance" "jenkins" {
    label = "jenkins"
    image = var.image
    region = "eu-central"
    type = "g6-nanode-1"
    root_pass = "Supers3cr3t?"
}