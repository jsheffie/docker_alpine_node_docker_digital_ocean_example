This is accomanys a YouTube tutoral about how to deploy a node alpine server to digital ocean.

Step 1: create ssh keys ( on local machine )
        https://www.digitalocean.com/community/tutorials/how-to-use-ssh-keys-with-digitalocean-droplets
        $ cd ~
        $ ssh-keygen -t rsa

Step 2: add ssh key to digital ocean
        DigitalOcean -> security - > SSH Keys

Step 3: Create a digital Ocean virtual private server. ( droplet )
        Image(distro):     Ubuntu
        Standard Droplets: 1 GB
        Datacenter Region: New York
        Add SSH Keys: do it
        Hostname: node-express-example

Step 4: Install Docker
        http://get.docker.com

Step 5: Create Deploy user ( create_deploy_user.sh )

exit

Step 7: configure ssh to log into the target as the root user

Step 8: login in as deploy user ( deploy@node-express-example)

Step 9: Docker login
   $ docker ps
   $ docker login

( all set up to log into docker and get my images )

