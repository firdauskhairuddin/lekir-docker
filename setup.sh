#!/bin/bash

docker compose build .
docker compose up -d

echo "\n🚀 Lekir Framework is ready!"
echo "🌐 URL: http://localhost:1337"
echo "👤 Username: admin"
echo "🔑 Password: password"
