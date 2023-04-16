require "pry"
# For clarity, un-comment each #binding.pry to verify your assumptions against the user_spec test. Use the questions in comments to guide your exploration.


class User
  attr_reader :name
  def initialize(name)
    @name = name
    ##What is the @name property?
    # "Alex"
  end

  def say_hello
    ##What will be output here?
    # "Hello, Alex"
    "Hello, " + @name
  end

  def self.create_multiple(users)
    users.map do |user|
      new_user = User.new(user[:name])
      ## What is new_user? What properties does it have?
      # An instance of User. name
    end
  end
end
