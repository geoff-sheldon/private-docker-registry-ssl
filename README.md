# Five-step setup for private Docker repository with Let's Encrypt SSL

Make sure you have a domain name and SSH access to an instance. This works with mkpasswd to create users and passwords.  This is nice because nginx can manage access based on user, so if you ever want distinct read/write permissions this repo can be extended.
## Steps

1. Set in `docker-compose.yml` the **REGISTRY_USER, REGISTRY_PASSWORD and DOMAIN** on the Nginx args.
2. On `ssl_gen` set **DOMAIN** value with your domain.
3. `docker-compose up -d`
4. `chmod +x *.sh && ./ssl_gen.sh`  
5. After it succeeds, start it with `docker-compose restart`

## After it succeeds
1. `docker login my-repo-url.com` give your user name/pass
2. It should say `Login Succeeded`

# Automatic cron setup

This will schedule a renewal of the SSL cert with Let's Encrypt every 15 days.
1. `crontab -u $USER -e`
2. `0 0 */15 * *  /path/to/registry_files/ssl_renew.sh`

### Need to install Docker in your VPS machine?
https://docs.docker.com/install/linux/docker-ce/ubuntu/

https://docs.docker.com/compose/install/

### Be sure to donate to **letsencrypt.org**!
