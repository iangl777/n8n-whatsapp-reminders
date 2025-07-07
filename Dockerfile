FROM n8nio/n8n:latest

ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=8080
ENV N8N_PROTOCOL=https
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV DB_TYPE=postgresdb
ENV TZ=America/Mexico_City
ENV N8N_LOG_LEVEL=info
ENV N8N_METRICS=true

RUN mkdir -p /home/node/.n8n

EXPOSE 8080

CMD ["n8n", "start"]