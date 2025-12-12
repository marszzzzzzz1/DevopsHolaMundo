# Imagen base
FROM python:3.10-slim

# Define el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia tu archivo app.py dentro del contenedor
COPY app.py /app/

# Instala Flask para correr la app
RUN pip install flask

# Expone el puerto donde corre Flask
EXPOSE 5000

# Comando que ejecuta tu aplicación
CMD ["python", "app.py"]
