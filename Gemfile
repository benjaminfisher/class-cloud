source 'http://rubygems.org'

gem 'rails',          '3.1.1'

# Using Thin as webserver
gem 'thin',           '~> 1.2.11'
gem "therubyracer",   '~> 0.9.9'  # may not be needed
gem 'heroku'
gem 'bcrypt-ruby',    '~> 3.0.0'
gem 'jquery-rails',   '~> 1.0.17'

# PostgreSQL for production
# sqlite3 for dev & testing
group :production do
  gem 'pg'
end
group :development, :test do
  gem 'sqlite3'
  gem 'ruby-debug19', :require => 'ruby-debug'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.1.4'
  gem 'coffee-rails', '~> 3.1.1'
  gem 'uglifier',     '>= 1.0.3'
end

group :test do
  # Pretty printed test output
  gem 'turn', :require => false
end
