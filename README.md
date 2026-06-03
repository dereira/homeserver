git clone git@github.com:dereira/homeserver.git

## Fresh server setup

1. SSH into the server
2. Clone the repo
   git clone git@github.com:you/home-server.git /opt/homelab
3. Copy and fill .env files
   cp caddy/.env.example caddy/.env && nano caddy/.env
   cp nextcloud/.env.example nextcloud/.env && nano nextcloud/.env
4. Run setup
   cd /opt/homelab && ./setup.sh
5. Deploy
   ./deploy.sh
