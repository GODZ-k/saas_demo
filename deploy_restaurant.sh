#!/bin/bash

# Variables (Replace these with your actual values)
SUBDOMAIN=$1               # Subdomain for the restaurant (e.g., restaurant1)
DOMAIN="qrdine-in.com"     # Main domain
WEB_ROOT="/var/www"         # Path where Laravel apps will be deployed
LARAVEL_ZIP="/var/www/saas-demo/_work/saas_demo/saas_demo/frenzoo.zip"   # Path to the base Laravel zip file
NGINX_TEMPLATE="/var/www/saas-demo/_work/saas_demo/saas_demo/nginx_template.conf"  # Path to Nginx config template
SSL_EMAIL="tdm.katts1@gmail.com"        # Email for SSL registration with Certbot
MYSQL_USER="root"           # MySQL root username
MYSQL_PASS="Aa@112233"  # MySQL root password
DB_NAME="restaurant_${SUBDOMAIN}"  # Database name for the restaurant
SAMPLE_DB="/var/www/saas-demo/_work/saas_demo/saas_demo/sample_database.sql"  # Path to sample database SQL file

echo "unzip restaurant"
# Step 1: Create the folder and unzip Laravel application
mkdir -p "$WEB_ROOT/$SUBDOMAIN"
unzip "$LARAVEL_ZIP" -d "$WEB_ROOT/$SUBDOMAIN"

echo "configuring env files"
# Step 2: Configure Laravel .env file
# cp "$WEB_ROOT/$SUBDOMAIN/.env.example" "$WEB_ROOT/$SUBDOMAIN/.env"
sed -i "s/DB_DATABASE=laravel/DB_DATABASE=$DB_NAME/" "$WEB_ROOT/$SUBDOMAIN/.env"x
# sed -i "s/DB_USERNAME=root/DB_USERNAME=$DB_USER/" "$WEB_ROOT/$SUBDOMAIN/.env"
# sed -i "s/DB_PASSWORD=/DB_PASSWORD=$DB_PASS/" "$WEB_ROOT/$SUBDOMAIN/.env"

echo "setuping restaurant permissions"
# Step 3: Set permissions for Laravel
sudo chown -R www-data:www-data "$WEB_ROOT/$SUBDOMAIN"
sudo chmod -R 755 "$WEB_ROOT/$SUBDOMAIN"
sudo chmod -R 775 "$WEB_ROOT/$SUBDOMAIN/storage"
sudo chmod -R 775 "$WEB_ROOT/$SUBDOMAIN/bootstrap/cache"

echo "creating database for the restaurant"
# Step 4: Create MySQL Database and User
mysql -u"$MYSQL_USER" -p"$MYSQL_PASS" -e "CREATE DATABASE $DB_NAME"
mysql -u"$MYSQL_USER" -p"$MYSQL_PASS" "$DB_NAME" < "$SAMPLE_DB"
# mysql -u"$MYSQL_USER" -p"$MYSQL_PASS" -e "CREATE USER '$DB_USER'@'localhost' IDENTIFIED BY '$DB_PASS'"
# mysql -u"$MYSQL_USER" -p"$MYSQL_PASS" -e "GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_USER'@'localhost'"
# mysql -u"$MYSQL_USER" -p"$MYSQL_PASS" -e "FLUSH PRIVILEGES"


# Step 5: Set up Nginx configuration
# NGINX_CONF="/etc/nginx/sites-available/$SUBDOMAIN.conf"
# sed "s/{{subdomain}}/$SUBDOMAIN/g" "$NGINX_TEMPLATE" > "$NGINX_CONF"
# ln -s "$NGINX_CONF" /etc/nginx/sites-enabled/

# # Step 6: Reload Nginx to apply new configuration
# sudo systemctl reload nginx

# # Step 7: Set up SSL using Certbot
# sudo certbot --nginx --non-interactive --agree-tos --email "$SSL_EMAIL" -d "$SUBDOMAIN.$DOMAIN"

# Step 8: Verify and display success message
echo "Restaurant $SUBDOMAIN has been successfully deployed!"
