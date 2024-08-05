source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.2.2"
gem "rails", "~> 7.0.4", ">= 7.0.4.2"

gem "bootsnap", require: false
gem "cpf_cnpj"
gem "cssbundling-rails"
gem "jsbundling-rails"
gem "jbuilder"
gem "jquery-rails"
gem "jquery_mask_rails"
gem "pg", "~> 1.1"
gem "puma"
gem "redis", "~> 4.0"
gem "sassc-rails"
gem "sprockets-rails"
gem "stimulus-rails"
gem "turbo-rails"

# gem "image_processing", "~> 1.2"

group :development, :test do
  # gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem 'pry'
  gem 'rspec-rails'
  gem 'rubocop', require: false
  gem 'rubocop-rails', require: false
end

group :test do
  gem 'capybara'
  gem 'shoulda-matchers', '~> 6.0'
  gem 'simplecov', require: false
end

