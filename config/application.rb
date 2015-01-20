require File.expand_path('../boot', __FILE__)

require 'rails/all'
config.serve_static_assets = true
Bundler.require(:default, Rails.env)
module Milk
  class Application < Rails::Application
  end
end
