# ./jeep.rb
require "./engine"
require "./airconditionable"

class Jeep
  include Engine,
          Airconditionable

  def drive
    "All wheels go!"
  end
end
