require File.expand_path('../boot', __FILE__)

require 'rails/all'
Bundler.require(:default, Rails.env)
module Milk
  class Application < Rails::Application
    config.assets.compile = true
    config.assets.precompile =  ['*.js', '*.css', '*.css.erb']
  end
end
