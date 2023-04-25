class Reunion
  attr_reader :name,
              :activities

  def initialize(name)
    @name = name
    @activities = []
  end

  def add_activity(activity)
    @activities << activity
  end

  def total_cost
    @activities.sum(&:total_cost)
  end

  def total_owed
    total_owed = Hash.new(0)

    @activities.each do |activity|
      activity.owed.each do |name, owed|
        total_owed[name] += owed
      end
    end

    total_owed
  end

  def print_summary
    summary = []
    total_owed.each do |name, owed|
      summary << if owed == 0
                  "#{name} is all paid up"
                elsif owed < 0
                  "#{name} is owed #{owed.abs}"
                else
                  "#{name} owes #{owed}"
                end
    end
    p summary.join("\n")
  end
end