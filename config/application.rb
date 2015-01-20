require File.expand_path('../boot', __FILE__)

require 'rails/all'
Bundler.require(:default, Rails.env)
module Milk
  class Application < Rails::Application
    config.serve_static_assets = true
    
  end
end
