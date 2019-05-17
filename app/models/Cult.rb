require 'pry'
# require_relative 'Blood_Oath.rb'
# require_relative 'Follower.rb'

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

  def average_age
    total_age = 0
    self.cult_followers.each do |follower|
      total_age += follower.follower.age
    end
    total_age/self.cult_population
  end

  def my_followers_mottos
    self.cult_followers.each do |follower|
      puts follower.follower.life_motto
    end
  end

  def self.least_popular
    population = Float::INFINITY
    least_popular_cult = nil
    self.all.each do |cult|
      if cult.cult_population < population
        population = cult.cult_population
        least_popular_cult = cult
      end
    end
    least_popular_cult
  end

  def self.most_common_location
    location_hash = {}
    self.all.each do |cult|
      if location_hash[cult.location]
        location_hash[cult.location] += 1
      else
        location_hash[cult.location] = 1
      end
    end

    counter = 0
    most_common_location = nil
    location_hash.each do |location, count|
      if count > counter
        counter = count
        most_common_location = location
      end
    end
    most_common_location
  end

end

# aaron = Follower.new("Aaron", 35, "coding is fun")
# emi = Follower.new("Emi", 30, "i love cats")
# the_peoples_temple = Cult.new("The People's Temple", "Indiana", "1955", "Drink the Kool-aid")
# sullivanians = Cult.new("Sullivanians", "New York", "1957", "Whatever")
# children_of_god = Cult.new("Children of God", "California", "1968", "Love")
# branch_davidians = Cult.new("Branch Davidians", "New York", "1955", "who cares")
# blood_oath1 = Blood_Oath.new("2001", the_peoples_temple, aaron)
# blood_oath2 = Blood_Oath.new("2018", children_of_god, emi)
# blood_oath3 = Blood_Oath.new("2019", children_of_god, aaron)
# blood_oath4 = Blood_Oath.new("1998", sullivanians, emi)
# blood_oath5 = Blood_Oath.new("2019", sullivanians, aaron)
# binding.pry
# t
