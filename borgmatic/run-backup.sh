docker exec --env-file .env borgmatic /bin/sh -c "borgmatic --stats --verbosity 2 --list --force"
