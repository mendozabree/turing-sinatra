require 'yaml'
require 'active_record'

DB_CONFIG = YAML::load(File.open('config/database.yml'))

ActiveRecord::Base.establish_connection(
  adapter: "mysql2",
  host: DB_CONFIG['host'],
  username: DB_CONFIG['username'],
  password: DB_CONFIG['password'],
  database: DB_CONFIG['database']
)
