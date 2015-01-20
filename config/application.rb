require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env)
Bundler.require *Rails.groups(:assets)
module Milk
  class Application < Rails::Application
    config.assets.compile = true
  end
end
