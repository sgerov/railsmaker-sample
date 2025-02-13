Clearance.configure do |config|
  config.redirect_url = "/demo"
  config.mailer_sender = Rails.application.credentials.dig(:app, :mailer_sender)
  config.rotate_csrf_on_sign_in = true
end
