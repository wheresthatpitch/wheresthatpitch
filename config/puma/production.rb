rails_env = "production"
environment rails_env

bind "unix:///var/www/wheresthatpitch/shared/tmp/sockets/puma.sock"
