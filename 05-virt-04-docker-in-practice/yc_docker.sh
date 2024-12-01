#!/bin/sh
ssh -t -i id_ed25519 admin@158.160.139.59 << EOF
sudo su
docker ps -a
echo 'show databases; use virtd; show tables; SELECT * from requests LIMIT 10; exit;' > check.sql
docker exec -i shvirtd-example-python-db-1 mysql -uroot -pYtReWq4321 < check.sql
EOF
echo "Thats all"
