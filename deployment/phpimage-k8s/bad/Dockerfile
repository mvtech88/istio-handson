FROM php:7.2-fpm

# Create a non-root user
RUN useradd -m -u 1000 myuser

# Install necessary PHP extensions
RUN docker-php-ext-install mysqli

# Create necessary directories
RUN mkdir -p /var/www/html /var/www/myapp

# Set permissions and ownership
RUN chown -R myuser:www-data /var/www/html /var/www/myapp \
    && chmod -R 755 /var/www/html /var/www/myapp

# Copy application files
COPY ./*.php ./*.html /var/www/myapp/

# Switch to the non-root user
USER myuser

# Set the working directory
WORKDIR /var/www/myapp
