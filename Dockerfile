# Usar imagen base ligera de Nginx
FROM nginx:alpine

# Copiar archivos del proyecto al directorio público de Nginx
COPY . /usr/share/nginx/html

# Exponer el puerto 80 (puerto interno del contenedor)
EXPOSE 80

# Nginx corre automáticamente en primer plano
