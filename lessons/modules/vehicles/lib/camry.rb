# ./camry.rb
require "./engine"
require "./airconditionable"

class Camry
  include Engine,
          Airconditionable

  def drive
    "Back wheels go!"
  end
end
