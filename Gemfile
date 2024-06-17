source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.2'

# Rails gem version
gem 'rails', '~> 6.1.6.1'

# App server
gem 'puma', '>= 5.6.4'

# Stylesheets
gem 'sass-rails', '~> 6.0'

# JavaScript compressor
gem 'uglifier', '~> 4.2.0'

# JavaScript library
gem 'jquery-rails', '~> 4.4'

# Navigation library
gem 'turbolinks', '~> 5.2.1'

# JSON API builder
gem 'jbuilder', '~> 2.11'

# Secure password management
gem 'bcrypt', '~> 3.1'

# AWS S3 support
gem 'aws-sdk-s3', '~> 1.114'

# Webrick server
gem 'webrick', '~> 1.7'

# Email support
gem 'mail', '>= 2.8.0.rc1'

# Boot time reduction
gem 'bootsnap', '>= 1.13', require: false

# Rails admin interface
gem 'rails_admin', '~> 2.0'

group :development, :test do
  # Debugging tools
  gem 'byebug', '~> 11.1.3', platforms: %i[mri mingw x64_mingw]
  gem 'awesome_print', '~> 1.9'
  gem 'dotenv-rails', '~> 2.8'
  gem 'factory_bot_rails', '~> 6.2'
  gem 'pry-rails', '>= 0.3.9'
  gem 'rspec-rails', '~> 5.1'
  gem 'rubocop', '~> 1.36'
  gem 'rubocop-rspec', '2.12'
end

group :development do
  # Development tools
  gem 'listen', '~> 3.7.1'
  gem 'web-console', '>= 4.2'
  gem 'spring', '< 3.0'
  gem 'spring-watcher-listen', '~> 2.0.1'
  # Use sqlite3 as the database for Active Record in development
  gem 'sqlite3', '~> 1.4'
end

group :production do
  # Use pg as the database for Active Record in production
  gem 'pg', '~> 1.4.3'
  # Ensure you have the bundler gem for production environment
  gem 'bundler', '~> 2.0.2'
end

# Heroku requires the pg gem for production database

