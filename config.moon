config = require "lapis.config"

config "development", ->
  port 8080

  postgres ->
    backend "pgmoon"
    host "127.0.0.1"
    user "lapis"
    password "lapis"
    database "projnamehere"

config "docker", ->
  port os.getenv "PORT"

  postgresql_url os.getenv "DATABASE_URL"
