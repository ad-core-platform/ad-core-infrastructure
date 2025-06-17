# ad-core-infrastructure/stop.sh
#!/bin/bash

echo "🛑 Stopping AdCore Infrastructure..."
docker-compose down

echo "🗑️ Remove volumes? (y/N)"
read -r response
if [[ "$response" =~ ^[Yy]$ ]]; then
    docker-compose down -v
    echo "✅ Volumes removed"
fi

echo "✅ Infrastructure stopped"