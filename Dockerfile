# Base Image
FROM fedora:latest

# Maintainer and description labels
LABEL maintainer="Maimouna Diallo"
LABEL description="This is my first Dockerfile"

# Update and install httpd
RUN yum -y update && yum -y install httpd

# Copy the index file to the container
COPY index.html /var/www/html/

# Expose port 80
EXPOSE 80

# Start httpd in the foreground
ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]
