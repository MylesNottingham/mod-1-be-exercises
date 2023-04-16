# require './barkable'
require 'pry'

class Dog
  #include Barkable

  attr_reader :name, :number_of_woofs
  def initialize(name)
    @name = name
    @number_of_woofs = 0
    #binding.pry ## What will the @name property be?
    # "Fluffy"
  end

  # def bark
  #   #binding.pry ## What will be output here?
  #   # "Fluffy goes Bark!"
  #   "#{@name} goes Bark!"
  # end

  def woof
    #binding.pry ## When calling .woof on a Dog class, will this pry be hit?
    # no
    @number_of_woofs += 1
    "Woof!"
  end

  def self.woof
    "Self woof!"
    #binding.pry ## Can we call @number_of_woofs inside this class method? Why or why not?
    # No. This calls on the class itself which does not have that instance variable.
  end

end