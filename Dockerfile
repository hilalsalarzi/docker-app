# Use an official PHP image with Apache
FROM php:8.2-apache

# Enable PDO and MySQL extensions
RUN docker-php-ext-install pdo pdo_mysql

# Copy PHP application to the Apache web server root
COPY app/ /var/www/html/

# Update permissions
RUN chown -R www-data:www-data /var/www/html/

# Add custom php.ini settings
COPY php.ini /usr/local/etc/php/
