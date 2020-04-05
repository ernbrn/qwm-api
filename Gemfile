source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.1'

gem 'rails', '~> 6.0.0'

# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'

gem 'pry-rails', '~> 0.3.9'
# Use Puma as the app server
gem 'puma', '~> 3.11'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false
gem 'devise-jwt', '~> 0.6.0'

# Authorization
gem 'cancancan', github: 'CanCanCommunity/cancancan', branch: 'feature/3.0.0'
gem 'rolify', '~> 5.2'

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
gem 'rack-cors'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'pry-byebug', '~> 3.6'
  gem 'dotenv-rails', groups: [:development, :test]
  gem 'factory_bot_rails'
  gem 'rspec-rails', '~> 3.8'

end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'

  # Linting
  gem 'reek', '~> 5.4.0'
  gem 'rubocop', '~> 0.72.0'
  gem 'rubocop-rails', '~> 2.1.0', require: false
  gem 'rubocop-rspec', '~> 1.32', require: false
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
