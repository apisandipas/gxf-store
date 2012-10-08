source 'https://rubygems.org'

gem 'rails', '3.2.8'

gem 'pg'

gem 'jquery-rails'
gem 'rails-backbone'
gem 'hogan_assets'
gem 'momentjs-rails'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'compass-rails'
  gem 'zurb-foundation'
  gem 'uglifier', '>= 1.0.3'
end

group :test, :development do
  #gem 'guard-rails-assets'
  #gem 'guard-jasmine-headless-webkit'
  gem 'jasmine-headless-webkit'
  gem 'jasmine'
  gem 'jasminerice', :git => "git://github.com/noelrappin/jasminerice.git"
  gem 'rspec-rails'
  gem 'factory_girl_rails'
end

group :test do
  gem 'faker'
  gem 'capybara'
  gem 'guard-rspec'
  gem 'launchy'
end