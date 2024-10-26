#!/bin/bash

# Verificar que se proporcione un argumento
if [ -z "$1" ]; then
    echo "Uso: $0 <directorio-de-logs>"
    exit 1
fi

# Variables
LOG_DIR=$1
ARCHIVE_DIR="./archived_logs"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
ARCHIVE_NAME="logs_archive_${TIMESTAMP}.tar.gz"
LOG_FILE="./archive_log.txt"

# Verificar si el directorio de logs existe
if [ ! -d "$LOG_DIR" ]; then
    echo "Error: El directorio '$LOG_DIR' no existe."
    exit 1
fi

# Crear el directorio de archivos de respaldo si no existe
mkdir -p "$ARCHIVE_DIR"

# Crear archivo tar.gz del directorio de logs
tar -czf "$ARCHIVE_DIR/$ARCHIVE_NAME" -C "$LOG_DIR" .

# Verificar que la compresión se haya realizado con éxito
if [ $? -eq 0 ]; then
    # Registrar el evento en el archivo de log
    echo "$(date +"%Y-%m-%d %H:%M:%S") - Archivado: $ARCHIVE_DIR/$ARCHIVE_NAME" >> "$LOG_FILE"
    echo "Logs archivados con éxito en '$ARCHIVE_DIR/$ARCHIVE_NAME'."
    echo "Evento registrado en '$LOG_FILE'."
else
    echo "Error: No se pudo crear el archivo de respaldo."
fi

