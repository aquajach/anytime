require 'securerandom'
require 'rails/generators'

module Anytime
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../../templates", __FILE__)

      desc "Creates a Anytime initializer and copy locale files to your application."

      def copy_initializer
        template "../config/initializer.rb", "config/initializers/anytime.rb"
      end

      def insert_routes
        anytime_route  = "routes_anytime_to :freeze"
        route anytime_route
      end
    end
  end
end