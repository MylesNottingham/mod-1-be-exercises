require "rspec"
require "./lib/dish"
require "./lib/potluck"

RSpec.describe Potluck do
  before(:each) do
    @potluck = Potluck.new("7-13-18")
    @couscous_salad = Dish.new("Couscous Salad", :appetizer)
    @cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
    @summer_pizza = Dish.new("Summer Pizza", :appetizer)
    @roast_pork = Dish.new("Roast Pork", :entre)
    @candy_salad = Dish.new("Candy Salad", :dessert)
    @bean_dip = Dish.new("Bean Dip", :appetizer)
  end

  describe "#initialize" do
    it "exists" do
      expect(@potluck).to be_a(Potluck)
    end

    it "has a date" do
      expect(@potluck.date).to eq("7-13-18")
    end

    it "has no dishes" do
      expect(@potluck.dishes).to eq([])
    end
  end

  describe "#add_dish" do

    it "can add a dish to dishes" do
      expect(@potluck.dishes).to eq([])

      @potluck.add_dish(@couscous_salad)

      expect(@potluck.dishes).to eq([@couscous_salad])

      @potluck.add_dish(@cocktail_meatballs)

      expect(@potluck.dishes).to eq([@couscous_salad, @cocktail_meatballs])
    end

    it "can count dishes" do
      expect(@potluck.dishes.count).to eq(0)

      @potluck.add_dish(@couscous_salad)

      expect(@potluck.dishes.count).to eq(1)

      @potluck.add_dish(@cocktail_meatballs)

      expect(@potluck.dishes.count).to eq(2)
    end
  end

  describe "#get_all_from_category" do
    before(:each) do
      @potluck.add_dish(@couscous_salad)
      @potluck.add_dish(@summer_pizza)
      @potluck.add_dish(@roast_pork)
      @potluck.add_dish(@cocktail_meatballs)
      @potluck.add_dish(@candy_salad)
    end

    it "has five dishes in dishes" do
      expect(@potluck.dishes.count).to eq(5)
    end

    it "can return dishes in requested category" do
      expect(@potluck.get_all_from_category(:appetizer)).to eq([@couscous_salad, @summer_pizza])
    end

    it "can return the first dish in requested category" do
      expect(@potluck.get_all_from_category(:appetizer).first).to eq(@couscous_salad)
    end

    it "can return the name of the first dish in requested category" do
      expect(@potluck.get_all_from_category(:appetizer).first.name).to eq("Couscous Salad")
    end
  end

  describe "#menu" do
    before(:each) do
      @potluck.add_dish(@couscous_salad)
      @potluck.add_dish(@summer_pizza)
      @potluck.add_dish(@roast_pork)
      @potluck.add_dish(@cocktail_meatballs)
      @potluck.add_dish(@candy_salad)
      @potluck.add_dish(@bean_dip)
    end

    it "has six dishes in dishes" do
      expect(@potluck.dishes.count).to eq(6)
    end

    it "can return the menu" do
      expect(@potluck.menu).to eq({
        :appetizers=>["Bean Dip", "Couscous Salad", "Summer Pizza"],
        :entres=>["Cocktail Meatballs", "Roast Pork"],
        :desserts=>["Candy Salad"]
        })
    end
  end

  describe "#ratio" do
    before(:each) do
      @potluck.add_dish(@couscous_salad)
      @potluck.add_dish(@summer_pizza)
      @potluck.add_dish(@roast_pork)
      @potluck.add_dish(@cocktail_meatballs)
      @potluck.add_dish(@candy_salad)
      @potluck.add_dish(@bean_dip)
    end

    it "has six dishes in dishes" do
      expect(@potluck.dishes.count).to eq(6)
    end

    it "has can return the ratio of dishes by category" do
      expect(@potluck.ratio(:appetizer)).to eq(50.0)
    end
  end
end
