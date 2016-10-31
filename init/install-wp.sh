#!/usr/bin/env bash

set -ex;

DB_USER=root
DB_NAME=wp-theme-review
PORT=8080
WP_PATH=/tmp/wordpress-theme-review
WP_TITLE='Welcome to the WordPress'
WP_DESC='Hello World!'

if [ -e $WP_PATH ]; then
    rm -fr $WP_PATH
fi

curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli-nightly.phar
chmod 755 wp-cli-nightly.phar

echo "DROP DATABASE IF EXISTS $DB_NAME;" | mysql -u$DB_USER
echo "CREATE DATABASE $DB_NAME DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;" | mysql -u$DB_USER

./wp-cli-nightly.phar core download --path=$WP_PATH --locale=en_US --force

./wp-cli-nightly.phar core config \
--path=$WP_PATH \
--dbhost=localhost \
--dbname=$DB_NAME \
--dbuser=$DB_USER \
--dbprefix=wp_ \
--locale=en_US \
--extra-php <<PHP
define( 'JETPACK_DEV_DEBUG', true );
define( 'WP_DEBUG', true );
PHP

./wp-cli-nightly.phar core install \
--path=$WP_PATH \
--url=http://127.0.0.1:$PORT \
--title="WordPress" \
--admin_user="admin" \
--admin_password="admin" \
--admin_email="admin@example.com"

./wp-cli-nightly.phar rewrite structure "/archives/%post_id%" --path=$WP_PATH

./wp-cli-nightly.phar option update blogname "$WP_TITLE" --path=$WP_PATH
./wp-cli-nightly.phar option update blogdescription "$WP_DESC" --path=$WP_PATH

./wp-cli-nightly.phar plugin install wordpress-importer --activate --path=$WP_PATH
./wp-cli-nightly.phar import init/theme-unit-test-data.xml \
--authors=create \
--path=$WP_PATH

./wp-cli-nightly.phar server --host=0.0.0.0 --port=$PORT --docroot=$WP_PATH --path=$WP_PATH
