module TryingModels
  module ActsAsTryable
    extend ActiveSupport::Concern

    included do
    end

    module ClassMethods
      def acts_as_tryable
        return "say hello with acts_as_tryable intergate with model"
      end
    end
  end
end

ActiveRecord::Base.send :include, TryingModels::ActsAsTryable
