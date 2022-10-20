source "https://rubygems.org"

gem 'rake'
gem 'activesupport'
gem 'activerecord', '< 6.1.0'
gem 'bcrypt'

gem 'sinatra', '~> 2.2.2'
gem 'sinatra-contrib'
gem 'sinatra-activerecord'

gem 'puma'
gem 'tux'
gem 'pry'

group :development, :test do
  gem 'shotgun'
  gem 'sqlite3', '~> 1.3.6'
end

group :production do
  gem 'pg'
  gem 'rails_12factor'
end