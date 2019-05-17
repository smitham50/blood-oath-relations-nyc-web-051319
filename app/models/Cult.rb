require 'pry'

class Cult
  attr_accessor :name, :location, :founding_year, :slogan

  @@all = []

  def initialize(name, location, founding_year, slogan)
    @name = name
    @location = location
    @founding_year = founding_year
    @slogan = slogan
    @@all << self
  end

  def self.all
    @@all
  end

  def recruit_follower(follower)
    Blood_Oath.all << follower
  end

  def cult_followers
    Blood_Oath.all.select do |follower|
      follower.cult.name == self.name
    end
  end

  def cult_population
    self.cult_followers.length
  end

  def self.find_by_name(name)
    self.all.select do |cult|
      cult.name == name
    end
  end

  def self.find_by_location(location)
    self.all.select do |cult|
      cult.location == location
    end
  end

  def self.find_by_founding_year(year)
    self.all.select do |cult|
      cult.founding_year == year
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
