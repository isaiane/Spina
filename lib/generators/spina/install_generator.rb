module Spina
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path("../templates", __FILE__)

    def create_initializer_file
      return if Rails.env.production?
      template 'config/initializers/spina.rb'
    end

    def create_mobility_initializer_file
      return if Rails.env.production?
      template 'config/initializers/mobility.rb'
    end

    def copy_migrations
      return if Rails.env.production?
      rake 'spina:install:migrations'
    end

    def run_migrations
      rake 'db:migrate'
    end

    def bootstrap_spina
      rake 'spina:bootstrap'
    end
  end
end
