require 'action_view'
require 'rezort'

module ReZort
  module ViewHelpers
    module ActionView
      def sortable(link_text, column, html_options={})
        # Handle strange people sending us null values
        html_options ||= {}

        # Sorting is ascending by default
        column = column.to_s
        direction = "asc"
        css = ""

        # Toggle the direction of the sorting
        chevron_direction = nil
        if params[:sort]
          old_column, old_direction = params[:sort].reverse.split('_', 2).map(&:reverse).reverse
          if old_column == column
            if old_direction == "asc"
              css = "asc"
              direction = "desc"
              chevron_direction = 'up'
            else
              css = "desc"
              direction = "asc"
              chevron_direction = 'down'
            end
          end
        end

        # Preserve other GET parameters
        merged_params = request.params
        merged_params[:sort] = column + '_' + direction

        # Add rezort class
        html_class = html_options[:class] || ''
        html_class += ' rezort'
        html_options[:class] = html_class


        chevron = chevron_direction ? tag('span', class: "fas fa-chevron-#{chevron_direction}") : ''
        link_to(link_text.html_safe + ' ' + chevron, url_for(merged_params), html_options)
      end
    end
  end
end
