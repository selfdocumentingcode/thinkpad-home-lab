echo "Extracting temp backup at /tmp/latest"
docker exec -it --env-file .env borgmatic /bin/sh -c "mkdir -p /tmp/latest && borgmatic extract --repository local --archive latest --destination /tmp/latest && cd /tmp/latest/mnt/source; exec sh" 

echo "Removing temp backup at /tmp/latest"
docker exec --env-file .env borgmatic /bin/sh -c "rm -r /tmp/latest" 

