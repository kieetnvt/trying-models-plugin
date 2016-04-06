require 'active_support/concern'

module TryingModels
  module ActsAsTryableConcern
    # with ActiveSupport:;Concern, it will see class_methods and instance_methods automatic
    extend ActiveSupport::Concern

    # define class methods, The Target extend this module, so we get class_methods in Target class
    class_methods do
      def default_author
        "admin"
      end
    end

    # define instance methods, The Target included this module, so we get instance_methods in Target class
    def name_uppercase
      name.upcase
    end

  end
end

# call send method for ActiveRecord::Base and Other models in your app inherite it, so Other models have this Plugins
class ActiveRecord::Base
  include TryingModels::ActsAsTryableConcern
end
