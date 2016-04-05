module TryingModels
  module ActsAsTryable
    extend ActiveSupport::Concern

    def self.included(target)
      target.send :include, LocalInstanceMethods
      target.send :extend, ClassMethods
    end

    module ClassMethods
      def acts_as_tryable
        include TryingModels::ActsAsTryable::LocalInstanceMethods
        return "say hello with acts_as_tryable intergate with model"
      end
    end

    module LocalInstanceMethods
      def full_content
        return "name is '#{name}' and content is '#{content}'"
      end
    end

  end
end

ActiveRecord::Base.send :include, TryingModels::ActsAsTryable
