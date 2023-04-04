pizza_toppings = {
  veggies: ["green peppers", "jalapeño", "mushrooms"],
  protein: ["pepperoni", "sausage", "sardines"],
  fruit: ["pineapple"]
}

# 1. what is pizza_toppings.count
# 3
p pizza_toppings.count
# 2. what is pizza_toppings.values
# the three seperate arrays
p pizza_toppings.values
# 3. how can I access the element “pineapple”
# pizza_toppings[:fruit][0]
p pizza_toppings[:fruit][0]
# 4. how can I add the element “olives” to the key “veggies”?
# pizza_toppings[:veggies] << “olives”
pizza_toppings[:veggies] << "olives"
p pizza_toppings[:veggies]
