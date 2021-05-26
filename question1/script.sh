
docker-compose down

docker-compose up -d

sleep 5

docker cp ./query.sql de_postgres:/query.sql
docker exec -u postgres de_postgres psql postgres postgres -f /query.sql

echo 'nifi is running on port 8080'
