FROM nginx:alpine

COPY . /usr/share/nginx/html

# Railway assigns a dynamic port env var $PORT
# We use sed to replace port 80 in the default nginx config with the value of $PORT
CMD sed -i -e 's/80/'"$PORT"'/g' /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'
