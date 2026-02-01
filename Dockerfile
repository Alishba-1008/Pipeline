# Use the lightweight Nginx Alpine image
FROM nginx:latest

# Remove the default Nginx static assets
RUN rm -rf /usr/share/nginx/html/*

# Copy your portfolio file to the Nginx server folder
# We rename it to index.html so it serves as the homepage
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
