# Use a lightweight official Nginx base image
FROM nginx:alpine

# Maintainer (optional, but good practice)
LABEL maintainer="nicolekellybasco@21gmail.com"

# Copy a custom index.html file into the Nginx web root
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 to the outside world
EXPOSE 80

# Command to run Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]