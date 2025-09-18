#!/bin/bash

set -e

case "${1:-}" in
    "full-compose")
        echo "🚀 Instalación completa con Docker Compose..."
        docker-compose up --build -d
        echo "✅ ¡Listo! Accede a: http://localhost:3000"
        ;;
    "build")
        docker-compose build
        ;;
    "start")
        docker-compose up -d
        ;;
    "stop")
        docker-compose down
        ;;
    *)
        echo "Uso: ./build.sh [full-compose|build|start|stop]"
        ;;
esac
