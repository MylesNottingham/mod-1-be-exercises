require "rspec"
require "./lib/person"


describe Person do
  describe '#initialize' do
    it 'is an instance of Person' do
      # write the code to initialize a new Person object
      person_1 = Person.new("Stevie", 3)
      person_2 = Person.new("Sam", 18)

      expect(person_1).to be_a(Person)
      expect(person_2).to be_a(Person)
    end

    it 'has a name' do
      # test it has a name
      person_1 = Person.new("Stevie", 3)
      person_2 = Person.new("Sam", 18)

      expect(person_1.name).to eq("Stevie")
      expect(person_2.name).to eq("Sam")
    end

    it 'has an age' do
      # test it has an age
      person_1 = Person.new("Stevie", 3)
      person_2 = Person.new("Sam", 18)

      expect(person_1.age).to eq(3)
      expect(person_2.age).to eq(18)
    end
  end

  describe '#adult?' do
    it 'checks if adult' do
      # test it can add cookies
      person_1 = Person.new("Stevie", 3)
      person_2 = Person.new("Sam", 18)

      expect(person_1.adult?).to eq(false)
      expect(person_2.adult?).to eq(true)
    end
  end
end
