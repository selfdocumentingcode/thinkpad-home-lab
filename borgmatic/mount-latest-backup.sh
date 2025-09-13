echo "Mounting backup at /tmp/latest"
docker exec -it --env-file .env borgmatic /bin/sh -c "mkdir -p /tmp/latest && borgmatic mount --archive latest --mount-point /tmp/latest && cd /tmp/latest/mnt/source/lab-docker-volumes; exec sh" 

echo "Unmounting backup at /tmp/latest"
docker exec --env-file .env borgmatic /bin/sh -c "borgmatic umount --mount-point /tmp/latest && rm -r /tmp/latest" 

