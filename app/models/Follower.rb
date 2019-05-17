require 'pry'
# require_relative 'Blood_Oath.rb'
# require_relative 'Cult.rb'

class Follower
  attr_accessor :name, :age, :life_motto

  @@all = []

  def initialize(name, age, life_motto)
    @name = name
    @age = age
    @life_motto = life_motto
    @@all << self
  end

  def cults
    Blood_Oath.all.select do |cult|
      cult.follower.name == self.name
    end
  end

  def join_cult(cult_instance)
        Blood_Oath.new("2019", cult_instance, self)
  end

  def self.all
    @@all
  end

  def self.of_a_certain_age(age)
    self.all.select do |follower|
      follower.age >= age
    end
  end
end

# aaron = Follower.new("Aaron", 35, "coding is fun")
# emi = Follower.new("Emi", 30, "i love cats")
# the_peoples_temple = Cult.new("The People's Temple", "Indiana", "1955", "Drink the Kool-aid")
# sullivanians = Cult.new("Sullivanians", "New York", "1957", "Whatever")
# children_of_god = Cult.new("Children of God", "California", "1968", "Love")
# blood_oath1 = Blood_Oath.new("2001", the_peoples_temple, aaron)
# blood_oath2 = Blood_Oath.new("2018", children_of_god, emi)
# blood_oath3 = Blood_Oath.new("2019", children_of_god, aaron)
# blood_oath4 = Blood_Oath.new("1998", sullivanians, emi)
# blood_oath5 = Blood_Oath.new("2019", sullivanians, aaron)
# binding.pry
# t
