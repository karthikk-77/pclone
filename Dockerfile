# Use a simple web server image
FROM nginx:alpine
COPY . /usr/share/nginx/html
