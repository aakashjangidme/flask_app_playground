FROM nginx:alpine

# remove the default configuration of nginx
RUN rm /etc/nginx/conf.d/default.conf
# and copy our new config to nginx directory
COPY nginx.conf /etc/nginx/conf.d