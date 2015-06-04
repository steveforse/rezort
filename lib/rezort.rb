module ReZort
  class ReZortRailtie < ::Rails::Railtie
    initializer "rezort.configure" do |app|

      ActiveSupport.on_load :active_record do
          require 'rezort/orms/active_record'
          include ReZort::Orms::ActiveRecord
      end

      # Loads sortable() into views
      ActiveSupport.on_load :action_view do
        require 'rezort/view_helpers/action_view'
        include ReZort::ViewHelpers::ActionView
      end
    end
  end
end
