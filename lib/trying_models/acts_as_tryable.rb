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
        include InstanceMethods
        true
      end
    end

    # define instance methods, The Target included this module, so we get instance_methods in Target class
    module InstanceMethods
      #
      # Example:
      #   test = Article.new(name: "test_name", content: "test_content")
      #
      #   -> initialize object #<Article> and call super
      #   -> send method [:_read_attribute, "name"]
      #   -> send method [:_read_attribute, "content"]
      #
      #   #-> when initialize object, call all read_attribute base on model's columns name
      #   -> read_attribute ["id"]
      #   -> read_attribute ["name"]
      #   -> read_attribute ["content"]
      #   -> read_attribute ["created_at"]
      #   -> read_attribute ["updated_at"]
      #
      #
      def initialize(*args)
        # puts "initialize object #{self} and call super"
        super
      end

      def send(*args)
        # puts "send method #{args}"
        super
      end

      def read_attribute(*args)
        # puts "read_attribute #{args}"
        super
      end

      def _read_attribute(*args)
        # puts "_read_attribute #{args}"
        super
      end

      #
      # override method missing from active_support lib
      # purpose: not raise error when call any method name from instance object
      # Example: test.anomyous_function_name
      #  -> "Undefined Method" string return
      #
      def method_missing(method, *args, &block)
        "Undefined Method"
      end
    end

  end
end

# call send method for ActiveRecord::Base and Other models in your app inherite it, so Other models have this Plugins
ActiveRecord::Base.send :include, TryingModels::ActsAsTryable
