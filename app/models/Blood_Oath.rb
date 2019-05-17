require 'pry'
require_relative 'Follower.rb'
require_relative 'Cult.rb'
class Blood_Oath
  attr_accessor :cult, :follower, :initiation_date

  @@all = []

  def initialize(initiation_date, cult, follower)
    @initiation_date = initiation_date
    @cult = cult
    @follower = follower
    @@all << self
  end

  def self.all
    @@all
  end

  def self.first_oath
    counter = Float::INFINITY
    first_follower = nil
    self.all.each do |oath|
      if oath.initiation_date < counter
        counter = oath.initiation_date
        first_follower = oath.follower
      end
    end
    first_follower
  end
end

aaron = Follower.new("Aaron", 35, "coding is fun")
emi = Follower.new("Emi", 30, "i love cats")
james = Follower.new("James", 20, "whatever")
duncan = Follower.new("Duncan", 29, "i love life")
jennifer = Follower.new("Jennifer", 18, "not today")
chris = Follower.new("Chris", 40, "2kool4skool")
kevin = Follower.new("Kevin", 10, "what is life")
christy = Follower.new("Christy", 55, "tomato to-mato")
mary = Follower.new("Mary", 23, "weirrrrd")
kaitlyn = Follower.new("Kaitlyn", 12, "okurrrrr")
forrest = Follower.new("Forrest", 60, "life is a box of chocolates")
caroline = Follower.new("Caroline", 28, "if you know you know")


the_peoples_temple = Cult.new("The People's Temple", "Indiana", "1955", "Drink the Kool-aid")
sullivanians = Cult.new("Sullivanians", "New York", "1957", "Whatever")
children_of_god = Cult.new("Children of God", "California", "1968", "Love")
blood_oath1 = Blood_Oath.new(2001, the_peoples_temple, aaron)
blood_oath2 = Blood_Oath.new(2018, children_of_god, emi)
blood_oath3 = Blood_Oath.new(2019, children_of_god, aaron)
blood_oath4 = Blood_Oath.new(1998, sullivanians, emi)
blood_oath5 = Blood_Oath.new(2019, sullivanians, aaron)
blood_oath6 = Blood_Oath.new(1999, sullivanians, kaitlyn)
blood_oath7 = Blood_Oath.new(2001, children_of_god, james)
blood_oath8 = Blood_Oath.new(1978, the_peoples_temple, kaitlyn)
blood_oath9 = Blood_Oath.new(2002, children_of_god, mary)
blood_oath10 = Blood_Oath.new(1992, sullivanians, christy)
blood_oath11 = Blood_Oath.new(2005, the_peoples_temple, kevin)
blood_oath12 = Blood_Oath.new(1985, children_of_god, duncan)
blood_oath13 = Blood_Oath.new(1991, sullivanians, jennifer)
blood_oath14 = Blood_Oath.new(1776, sullivanians, chris)





binding.pry
t
