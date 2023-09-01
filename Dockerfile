# Use the official Ubuntu base image
FROM ubuntu/nginx:latest

# Set environment variables to non-interactive mode
# ENV DEBIAN_FRONTEND=noninteractive

# Update package list and install necessary packages
# RUN apt-get update && \
#     apt-get install -y nginx

# # Remove the default Nginx configuration
# RUN rm /etc/nginx/sites-enabled/default

# Copy your Nginx configuration file from the host to the container
COPY ./defender/config/nginx.conf /etc/nginx/sites-enabled/nginx.conf
COPY ./defender/index.html /var/www/html/

# Expose port 80 for Nginx
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
