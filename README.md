# mafia_web_app
Simple mafia web app

# To Build App

* `cd mafia_web_app`
* `docker-compose up --build`

# To Use App
* `docker exec -it <backend_container_id> python /app/mafia_backend/manage.py migrate`
* `docker exec -it <backend_container_id> python /app/mafia_backend/manage.py createsuperuser
`
* Go to `localhost:port/admin (default port 8000)` 