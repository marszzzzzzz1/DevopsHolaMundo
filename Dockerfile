# Imagen base
FROM python:3.10-slim

# Directorio de trabajo
WORKDIR /app

# Copia requirements
COPY requirements.txt .

# Instala dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Copia la app
COPY app.py .

# Puerto
EXPOSE 5000

# Ejecuta la app
CMD ["python", "app.py"]
