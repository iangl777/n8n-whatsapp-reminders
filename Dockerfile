# Dockerfile para n8n en Render
FROM n8nio/n8n:latest

# Variables de entorno básicas
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=8080
ENV N8N_PROTOCOL=https
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV DB_TYPE=postgresdb
ENV TZ=America/Mexico_City

# Configuración de PostgreSQL
ENV DB_POSTGRESDB_SSL=true

# Crear directorio de trabajo
WORKDIR /home/node

# Exponer puerto
EXPOSE 8080

# Comando para iniciar n8n
CMD ["n8n"]
