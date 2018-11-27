require_relative './class_methods_module.rb'
require_relative './dance_module.rb'
require_relative './fancy_dance.rb'

class Dancer
  extend FancyDance::ClassMethods
  include FancyDance::InstanceMethods
  extend MetaDancing
  include Dance #'include' keyword allows our classes to use all of the methods
  #of the included module as instance methods

    attr_accessor :name

    def initialize(name)
      @name = name
    end
end
