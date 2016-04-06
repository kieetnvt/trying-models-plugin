module TryingModels
  module ActsAsTryable

    def self.included(target)
      # target mean the Model class name when you put `acts_as_tryable` in your Model
      # target.send :include, InstanceMethods
      target.send :extend, ClassMethods
    end

    # define class methods, The Target extend this module, so we get class_methods in Target class
    module ClassMethods
      def acts_as_tryable
        puts model_name
        puts column_names
        puts column_defaults
        include InstanceMethods
        "say hello with acts_as_tryable intergate with model"
      end
    end

    # define instance methods, The Target included this module, so we get instance_methods in Target class
    module InstanceMethods
      def tryit(attr)
        # read_attribute(attr.to_sym) rescue "Undefined"
        send(attr.to_sym) rescue "Undefined"
      end
    end

  end
end

# call send method for ActiveRecord::Base and Other models in your app inherite it, so Other models have this Plugins
ActiveRecord::Base.send :include, TryingModels::ActsAsTryable
