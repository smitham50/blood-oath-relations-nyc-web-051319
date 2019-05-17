require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
aaron = Follower.new("Aaron", 35, "coding is fun")
emi = Follower.new("Emi", 30, "i love cats")
the_peoples_temple = Cult.new("The People's Temple", "Indiana", "1955", "Drink the Kool-aid")
sullivanians = Cult.new("Sullivanians", "New York", "1957", "Whatever")
children_of_god = Cult.new("Children of God", "California", "1968", "Love")
blood_oath1 = Blood_Oath.new("2001", the_peoples_temple, aaron)
blood_oath2 = Blood_Oath.new("2018", children_of_god, emi)
blood_oath3 = Blood_Oath.new("2019", children_of_god, aaron)
blood_oath4 = Blood_Oath.new("1998", sullivanians, emi)



binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
