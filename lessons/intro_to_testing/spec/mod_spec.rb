require "rspec"
require "./lib/mod"
require "./lib/student"


describe Mod do
  describe '#initialize' do
    it 'is an instance of Mod' do
      # write the code to initialize a new Mod object
      mod_1 = Mod.new('Mod 1', 'Intro To OOP')

      expect(mod_1).to be_a(Mod)
    end

    it 'has a name' do
      # test it has a name
      mod_1 = Mod.new('Mod 1', 'Intro To OOP')

      expect(mod_1.name).to eq('Mod 1')
    end

    it 'has a description' do
      # test it has a description
      mod_1 = Mod.new('Mod 1', 'Intro To OOP')

      expect(mod_1.description).to eq('Intro To OOP')
    end

    it 'starts with no students' do
      # test it starts with no students
      mod_1 = Mod.new('Mod 1', 'Intro To OOP')

      expect(mod_1.students).to eq([])
    end
  end

  describe '#add_student' do
    it 'checks if students are added' do
      # test it can add students
      mod_1 = Mod.new('Mod 1', 'Intro To OOP')

      chris = Student.new('chRIs')
      richard = Student.new('RiCHard')
      meg = Student.new('meG')

      mod_1.add_student(chris)
      mod_1.add_student(richard)
      mod_1.add_student(meg)

      expect(mod_1.students).to match_array([chris, richard, meg])
    end
  end

  describe '#capitalized_student_names' do
    it 'checks if students names are capitalized' do
      # test it can capitalize students
      mod_1 = Mod.new('Mod 1', 'Intro To OOP')

      chris = Student.new('chRIs')
      richard = Student.new('RiCHard')
      meg = Student.new('meG')

      mod_1.add_student(chris)
      mod_1.add_student(richard)
      mod_1.add_student(meg)

      expect(mod_1.capitalized_student_names).to match_array(["Chris","Richard","Meg"])
    end
  end

  describe '#alphabetical_student_names' do
    it 'checks if students names are capitalized and alphabetical' do
      # test it can capitalize and alphabetize students
      mod_1 = Mod.new('Mod 1', 'Intro To OOP')

      chris = Student.new('chRIs')
      richard = Student.new('RiCHard')
      meg = Student.new('meG')

      mod_1.add_student(chris)
      mod_1.add_student(richard)
      mod_1.add_student(meg)

      expect(mod_1.alphabetical_student_names).to match_array(["Chris","Meg","Richard"])
    end
  end
end
