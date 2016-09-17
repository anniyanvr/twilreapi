source 'https://rubygems.org'

ruby(File.read(".ruby-version").strip) if File.exist?(".ruby-version")

gem 'rails', '5.0.0.1'
gem 'pg'
gem "responders"
gem 'doorkeeper'
gem 'puma'
gem 'aasm'
gem 'phony_rails'
gem 'phony'

gem 'bitmask_attributes', :github => "numerex/bitmask_attributes"

gem 'twilreapi-active_call_router', :github => "dwilkie/twilreapi-active_call_router"
gem 'twilreapi-active_call_router-pin_cambodia', :github => "dwilkie/twilreapi-active_call_router-pin_cambodia"

# Use active_elastic_job as queue adapter and excute jobs in this application
gem 'active_elastic_job', :github => "tawan/active-elastic-job"
gem 'twilreapi-worker',   :github => "dwilkie/twilreapi-worker"

# Use shoryuken as queue adapter
# gem 'shoryuken'

# Use Sidekiq as queue adapter
# gem 'sidekiq'
#gem 'sinatra', :github => "sinatra/sinatra", :require => false
#gem 'rack-protection', :github => "sinatra/rack-protection", :require => false

group :production do
  gem 'rails_12factor'
end

group :development, :test do
  gem 'pry'
  gem 'rspec-rails'
end

group :development do
  gem 'foreman'
end

group :test do
  gem 'factory_girl_rails'
  gem 'shoulda-matchers'
end

