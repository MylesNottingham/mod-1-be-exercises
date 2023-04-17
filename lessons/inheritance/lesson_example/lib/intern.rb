require "./lib/employee"

class Intern < Employee
  attr_reader :hourly_rate

  def initialize(hourly_rate, name, id)
    @hourly_rate = hourly_rate
    super(name, id)
  end

  def get_coffee
    "Who got the latte?"
  end

  def benefits
    [:gets_to_get_me_coffee].append(super).flatten
  end

  def total_compensation
    @hourly_rate * 2000
  end
end
