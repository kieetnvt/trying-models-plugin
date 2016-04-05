module TryingModels
  module ActsAsTryable

    def self.included(target)
      target.send :include, InstanceMethods
      target.send :extend, ClassMethods
    end

    module ClassMethods
      def acts_as_tryable
        "say hello with acts_as_tryable intergate with model"
      end
    end

    module InstanceMethods
      def full_content
        "name is '#{name}' and content is '#{content}'"
      end
    end

  end
end

ActiveRecord::Base.send :include, TryingModels::ActsAsTryable
