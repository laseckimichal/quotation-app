require File.expand_path('../boot', __FILE__)

require 'rails/all'

Bundler.require(*Rails.groups)

module Quotation
  class Application < Rails::Application
    config.active_record.schema_format = :sql
    config.active_record.time_zone_aware_types = %i[datetime time]
    config.time_zone = 'Warsaw'
    config.i18n.available_locales = %i[pl en]
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}')]
    config.eager_load_paths << Rails.root.join('lib')
    config.i18n.default_locale = :en
  end
end
