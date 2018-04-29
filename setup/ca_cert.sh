# Script from generating CA-signed certificate
# Requires registered domain regisistered

# Insert domain name here
DOMAIN=example.com
CERT_PATH=/home/ubuntu/Empire/data

# Install certbot for letsencrypt certs
sudo apt-get update
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:certbot/certbot
sudo apt-get update
sudo apt-get install certbot

# Generate cert
sudo certbot certonly --standalone -d $DOMAIN

# Copy cert to expected format in empire
sudo cp /etc/letsencrypt/live/$DOMAIN/fullchain.pem $CERT_PATH/empire-chain.pem
sudo cp /etc/letsencrypt/live/$DOMAIN/privkey.pem $CERT_PATH/empire-priv.key
