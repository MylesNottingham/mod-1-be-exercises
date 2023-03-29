class Potluck
  attr_reader :date,
              :dishes

  def initialize(date)
    @date = date
    @dishes = []
  end

  def add_dish(dish)
    @dishes << dish
  end

  def get_all_from_category(category)
    @dishes.find_all { |dish| dish.category == category }
  end

  def menu
    appetizers = get_all_from_category(:appetizer).map { |dish| dish.name}.sort
    entres = get_all_from_category(:entre).map { |dish| dish.name}.sort
    desserts = get_all_from_category(:dessert).map { |dish| dish.name}.sort
    
    {
      appetizers:appetizers,
      entres:entres,
      desserts:desserts
    }
  end

  def ratio(category)
    (get_all_from_category(category).count / @dishes.count.to_f) * 100
  end
end