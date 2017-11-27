require 'rails_admin/config/actions'
require 'rails_admin/config/actions/base'

module RailsAdminBalance
end

module RailsAdmin
  module Config
    module Actions
      class Balance < RailsAdmin::Config::Actions::Base
       RailsAdmin::Config::Actions.register(self)
        # register_instance_option :object_level do
        #   true
        # end
        register_instance_option :link_icon do
         'icon-eye-open'
        end
        register_instance_option :root? do
          true
        end
      end
    end
  end
end