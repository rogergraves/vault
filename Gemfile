source 'https://rubygems.org'
ruby '2.4.0'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.0.1'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'

gem 'bootstrap', '~> 4.0.0.alpha6'
source 'https://rails-assets.org' do
  gem 'rails-assets-tether', '>= 1.3.3'
end

gem "font-awesome-rails"
gem "animate-rails"
gem "wow-rails"
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'

group :development, :test do
  gem 'byebug', platform: :mri
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'awesome_print'                                 # Nicely formatted data structures in console, for example "ap User.first"
  gem 'factory_girl_rails', '~> 4.7'                  # Test data generator -- see spec/factories/factories.rb
  gem 'git-smart', '~> 0.1.9'                         # Allows "git smart-pull" for less merge messes
  gem 'faker', '~> 1.6.1'                             # Easy way to add fake data: names, email addresses, etc.
end

group :production do

end


# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
