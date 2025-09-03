# Imagen base
FROM alpine:3.20

# Instalar curl
RUN apk add --no-cache curl

# Crear carpeta /app
WORKDIR /app

# Copiar mensaje.txt desde el host a la imagen
COPY texto.txt /app/texto.txt

# Definir CMD para mostrar el contenido del archivo
CMD ["cat", "/app/texto.txt"]
