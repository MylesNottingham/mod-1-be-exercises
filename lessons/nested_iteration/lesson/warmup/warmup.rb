# Given the following array:
nested_animals = [[:dog, :cat, :zebra], [:quokka, :unicorn, :bear]]


# Use an enumerable to:

# 1. Return an unnested (single layer) array of animals as strings
array_as_strings = nested_animals.flat_map do |array|
  array.map do |animal|
    animal.to_s
  end
end

print array_as_strings
puts

# 2. Return an unnested array of animals with length >= 4
long_animals = nested_animals.flat_map do |array|
  array.find_all do |animal|
    animal.length >= 4
  end
end

print long_animals
puts

# 3. Return a hash where the keys are the animal, and the values are the length. ex: {dog: 3, cat: 3, zebra: 5 ... }
animal_hash = nested_animals.flat_map do |array|
  array.map do |animal|
    [animal, animal.length]
  end
end.to_h

print animal_hash
puts
