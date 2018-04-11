require 'rake'
require 'active_record'

ActiveRecord::Base.establish_connection(:adapter => "sqlite3", :database => "./db/users.sqlite3")


desc "create the database"
task "db:create" do
  puts "Creating file users.sqlite3 if it doesn't exist..."
  touch 'db/users.sqlite3'
end

desc "drop the database"
task "db:drop" do
  puts "Deleting database..."
  rm_f 'db/users.sqlite3'
end

desc "migrate the database (options: VERSION=x, VERBOSE=false, SCOPE=blog)."
task "db:migrate" do
  ActiveRecord::Migrator.migrations_paths << File.dirname(__FILE__) + 'db/migrate'
  ActiveRecord::Migration.verbose = ENV["VERBOSE"] ? ENV["VERBOSE"] == "true" : true
  ActiveRecord::MigrationContext.new(ActiveRecord::Migrator.migrations_paths).migrate do |migration|
    ENV["SCOPE"].blank? || (ENV["SCOPE"] == migration.scope)
  end
end

desc "populate the test database with sample data"
task "db:seed" do
  require APP_ROOT.join('db', 'seeds.rb')
end

desc 'Retrieves the current schema version number'
task "db:version" do
  puts "Current version: #{ActiveRecord::Migrator.current_version}"
end
