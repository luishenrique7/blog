require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Blog
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    config.time_zone = 'Brasilia'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    config.i18n.default_locale = 'pt-BR'

    # Rails generate without assets
    config.generators.assets = false

    # Rails generate without helpers
    config.generators.helper = false

    # Rails generate without tests
    config.generators.test_framework = false

    # Do not swallow errors in after_commit/after_rollback callbacks.
    config.active_record.raise_in_transactional_callbacks = true

    #Configurações do Gmail
    config.action_mailer.delivery_method = :smtp
    config.action_mailer.smtp_settings = 
    {
      :address              => "smtp.gmail.com",
      :port                 => 587,
      :domain               => 'gmail.com',
      :user_name            => 'lhenriquee7',
      :password             => 'wk350Q&F',
      :authentication       => 'plain',
      :enable_starttls_auto => true 
    }
    # Para debug apenas, é melhor que a linha abaixo seja adicionado apenas no ambiente de desenvolvimento
    config.action_mailer.raise_delivery_errors = true


  end
end
