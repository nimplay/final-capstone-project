require_relative "boot"

require 'devise'
require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)



module FinalCapstoneBackend
  class Application < Rails::Application
    # config.session_store :cookie_store, key: '_interslice_session'
    # config.middleware.use ActionDispatch::Cookies
    # config.middleware.use config.session_store, config.session_options
    config.api_only = false

    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

   # config.session_store :cookie_store, key: '_interslice_session'
   # config.middleware.use ActionDispatch::Cookies
   # config.middleware.use config.session_store, config.session_options



    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
    config.middleware.insert_before 0, Rack::Cors do
      allow do
        origins '*'
        resource '*', headers: :any, methods: [:get, :post, :options, :delete, :put, :patch]
      end
    end
  end
end
