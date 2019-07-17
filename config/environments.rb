require 'yaml'
require 'active_record'

DB_CONFIG = YAML::load(File.open('config/database.yml'))

ActiveRecord::Base.establish_connection(
  adapter: "mysql2",
  host: DB_CONFIG['host'],
  username: ENV['DB_USER'],
  password: ENV['DB_PASSWORD'],
  database: DB_CONFIG['database']
)
