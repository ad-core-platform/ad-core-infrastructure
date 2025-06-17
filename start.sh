# ad-core-infrastructure/start.sh
#!/bin/bash

echo "🚀 Starting AdCore Infrastructure..."

# .env 파일 확인
if [ ! -f .env ]; then
    echo "❌ .env file not found. Creating default..."
    cp .env.example .env
fi

# Docker Compose 실행
echo "📦 Starting Docker containers..."
docker-compose up -d

echo "⏳ Waiting for databases to be ready..."
sleep 30

# 헬스체크
echo "🔍 Checking service health..."
docker-compose ps

echo "✅ Infrastructure is ready!"
echo ""
echo "📊 Access URLs:"
echo "  - PgAdmin:    http://localhost:5050 (admin@adcore.com / admin123)"
echo "  - Grafana:    http://localhost:3000 (admin / admin123)"
echo "  - Prometheus: http://localhost:9090"
echo ""
echo "🗄️ Database Connections:"
echo "  - Audience DB:  localhost:5432"
echo "  - Campaign DB:  localhost:5433"
echo "  - Serving DB:   localhost:5434"
echo "  - Tracking DB:  localhost:5435"