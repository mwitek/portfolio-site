require File.expand_path('../boot', __FILE__)

require 'rails/all'

Bundler.require(*Rails.groups)

module Mwitek
  class Application < Rails::Application
    config.active_record.raise_in_transactional_callbacks = true
    config.action_mailer.delivery_method = :smtp
    config.action_mailer.smtp_settings = {
      address: 'mail.mwitek.com',
      port: 587,
      domain: 'mwitek.com',
      authentication: :login,
      user_name: ENV['EMAIL_USER'],
      password: ENV['EMAIL_SECRET'],
      enable_starttls_auto: true,
      openssl_verify_mode: 'none'
    }
    config.action_mailer.raise_delivery_errors = true
    config.action_mailer.perform_deliveries = true
  end
end
