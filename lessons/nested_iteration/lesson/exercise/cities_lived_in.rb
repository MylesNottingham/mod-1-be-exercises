cities_lived_in = {
    michaela: ["Philadelphia", "Fort Collins", "Seattle"],
    mike: ["Denver", "Santa Fe", "Philadelphia", "Portland"],
    pamela: ["Lansing"],
    alex: ["Seattle", "Columbus", "Philadelphia", "Austin"]
}


# Problem #1:
# Get a unique list of all of the cities that these humans have lived in
# ["Philadelphia", "Fort Collins", "Seattle", "Denver", "Santa Fe", "Portland", "Lansing", "Columbus", "Austin"]

unique_cities = cities_lived_in.values.flatten.uniq

print unique_cities
puts

# Problem #2:
# Write code that iterates through the `cities_lived_in` hash, and returns a list of
# names of the humans who've lived in Philadelphia.

# [:michaela, :mike, :alex]
# or
# ["Michaela", "Mike", "Alex"]

philly_residents = cities_lived_in.filter_map do |human|
    human[0] if human[1].include?("Philadelphia")
end

print philly_residents
puts

# Problem #3:
# Create a hash that has the city as a key, and the number of people that live in it as it's value:

# {
#     "Philadelphia" => 3,
#     "Fort Collins" => 1,
#     "Seattle" =>2,
#     "Denver" => 1,
#     "Santa Fe" => 1,
#     "Portland" => 1,
#     "Lansing" => 1,
#     "Columbus => 1,
#     "Austin" => 1
# }


city_pop = cities_lived_in.values.flatten.each_with_object(Hash.new(0)) do |city, pop|
    pop[city] += 1
end

print city_pop
puts