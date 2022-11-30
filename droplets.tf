# This code defines a Droplet resource called test_droplet, 
# running Ubuntu 20.04 with 1GB RAM and a CPU core.

resource "digitalocean_droplet" "test_droplet" {
  count  = 3
  image  = "ubuntu-20-04-x64"
  name   = "web"
  region = "fra1"
  size   = "s-1vcpu-1gb"  
  
  provisioner "local-exec" {
    when    = create
    command = "mkdir josh-wahome"
  }


}

# Count is used to indicate the number of droplets to create. 