# Use PHP 8.2 Apache image
FROM php:8.2-apache

# Update package lists and install Git
RUN apt-get update && apt-get install -y git

# Set working directory
WORKDIR /var/www/html

# Clone the repository
RUN git clone https://github.com/firdauskhairuddin/lekir .
COPY configuration.php /var/www/html/core/

# Enable Apache rewrite module
RUN a2enmod rewrite

# Copy custom php.ini file
COPY php.ini /usr/local/etc/php/

# Install required PHP extensions
RUN apt-get update && apt-get install -y \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    libpng-dev \
    libwebp-dev \
    libxpm-dev \
    zlib1g-dev \
    libzip-dev \
    net-tools \
    iputils-ping \
    && docker-php-ext-configure gd --enable-gd --with-webp --with-jpeg --with-xpm --with-freetype \
    && docker-php-ext-install -j$(nproc) gd mysqli pdo pdo_mysql zip \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Create uploads directory and set permissions
RUN mkdir -p /var/www/html/uploads \
    && chown -R www-data:www-data /var/www/html/uploads \
    && chmod -R 755 /var/www/htmls/uploads

# Disable directory listing, tokens, and server information
RUN echo "Options -Indexes" >> /etc/apache2/apache2.conf \
    && echo "ServerTokens Prod" >> /etc/apache2/apache2.conf \
    && echo "ServerSignature Off" >> /etc/apache2/apache2.conf
