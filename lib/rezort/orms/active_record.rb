require 'rezort'
require 'active_support/concern'

module ReZort
  module Orms
    module ActiveRecord
      extend ActiveSupport::Concern

      included do
        def self.rezort(sort, default_order = nil)
          if sort.nil?
            return default_order.nil? ? self : order(default_order)
          end
          column, direction = sort.reverse.split('_', 2).map(&:reverse).reverse
          order("#{column } #{direction}")
        end
      end
    end
  end
end
