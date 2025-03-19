# Use Nginx as base image
FROM nginx:alpine

# Remove default Nginx config
RUN rm /etc/nginx/conf.d/default.conf

# Add custom Nginx config
COPY nginx.conf /etc/nginx/conf.d/

# Create directory for serving files
RUN mkdir -p /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Nginx will run in the foreground
CMD ["nginx", "-g", "daemon off;"]