# load manager copied from https://codeburst.io/scaling-out-with-docker-and-nginx-8eda9fb1654c

FROM nginx
# The Dockerfile's author. Apostrophes need not apply, apparently.
LABEL Brian OMeara
# Copy the configuration file from the current directory and paste
# it inside the container to use it as Nginx's default config.
COPY nginx.conf /etc/nginx/nginx.conf
# Port 8080 of the container will be exposed and then mapped to port
# 8080 of our host machine via Compose. This way we'll be able to
# access the server via localhost:8080 on our host.
EXPOSE 8080
EXPOSE 80
EXPOSE 3838

# Start Nginx when the container has provisioned.
CMD ["nginx", "-g", "daemon off;"]
