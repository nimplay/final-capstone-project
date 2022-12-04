Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins '*'
    resource '*',
    headers: :any,
    methods: [:get, :post, :put, :patch, :delete, :options, :head],
    expose: ["Authorization"],
    max_age: 86400 # Access-Control-Max-Age is 1 day in seconds
  end
end
