echo "Mounting backup at /tmp/latest"
docker exec -it --env-file .env borgmatic /bin/sh -c "mkdir -p /tmp/latest && borgmatic mount --repository local --archive latest --mount-point /tmp/latest && cd /tmp/latest/mnt/source; exec sh" 

echo "Unmounting backup at /tmp/latest"
docker exec --env-file .env borgmatic /bin/sh -c "borgmatic umount --mount-point /tmp/latest && rm -r /tmp/latest" 

