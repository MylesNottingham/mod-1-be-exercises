require './lib/ceo'
require './lib/manager'
require './lib/intern'

ali = Ceo.new(15, 20, "Ali", "1")
ben = Manager.new(10, "Ben", "5")
chris = Intern.new(5, "Chris", "0")

# Ali, Ben, and Chris all need names and IDs in the system. Where can they get those?