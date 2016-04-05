require 'active_support/concern'

module TryingModels
  module ActsAsTryableConcern
    extend ActiveSupport::Concern

    class_methods do
      def default_author
        "admin"
      end
    end

    def name_uppercase
      name.upcase
    end

  end
end

class ActiveRecord::Base
  include TryingModels::ActsAsTryableConcern
end
