# Usa la imagen oficial ligera de Nginx
FROM nginx:alpine

# Elimina el contenido por defecto de Nginx (opcional, pero recomendado)
RUN rm -rf /usr/share/nginx/html/*

# Copia tus archivos de la app al directorio donde Nginx los servirá
COPY index.html /usr/share/nginx/html/
COPY css/ /usr/share/nginx/html/css/
COPY js/ /usr/share/nginx/html/js/
COPY img/ /usr/share/nginx/html/img/

# Opcional: si tienes un README.md, no es necesario para servir la web
# COPY README.md /usr/share/nginx/html/README.md

# Expone el puerto 80 para que el contenedor sea accesible
EXPOSE 80

# Comando para mantener Nginx corriendo en primer plano
CMD ["nginx", "-g", "daemon off;"]
