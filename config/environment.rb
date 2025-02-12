require 'opentelemetry/sdk'
# Load the Rails application.
require_relative "application"

# Initialize the Rails application.

OpenTelemetry::SDK.configure do |c|
  c.use_all unless Rails.env.development? || Rails.env.test?
end

Rails.application.initialize!
