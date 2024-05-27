# Usar la imagen oficial de PHP con Apache
FROM php:7.4-apache

# Copiar tu código PHP al directorio raíz del servidor web
COPY src/ /var/www/html/

# Instalar extensiones necesarias de PHP (si es necesario)
RUN docker-php-ext-install mysqli
