require_relative 'boot'

require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie" if ENV["RAILS_SKIP_CONNECT_ACTIVE_RECORD"].to_i != 1
require "action_controller/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Twilreapi
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    require_relative "../app/jobs/job_adapter"

    if JobAdapter.use_active_job?
      config.active_job.queue_adapter = JobAdapter.queue_adapter.to_sym
    end
  end
end
