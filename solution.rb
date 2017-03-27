# Please copy/paste all three classes into this file to submit your solution!
class Customer
  attr_accessor :first_name, :last_name, :full_name

  @@all = []
  @@all_names = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
    @full_name = first_name + " " + last_name
    @@all_names << first_name + " " + last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    # should return all of the customers
    @@all
  end

  def self.find_by_name(name)
    # given a string of a full name, returns the first
    # customer whose full name matches
    self.all.detect do |each_customer_instance|
      each_customer_instance.full_name == name
    end
  end

  def self.find_all_by_first_name(name)
    # given a string of a first name, returns an array
    # containing all customers with that first name
    self.all.detect do |each_customer_instance|
      each_customer_instance.first_name == name
    end
  end

  def self.all_names
    # should return an array of all of the customer
    # full names
    @@all_names
  end

  def add_review(restaurant, content)
    # given some content and a restaurant,
    # creates a new review and associates it with
    # that customer and that restaurant
  end
end

#######################################################

class Restaurant
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    # returns an array of all restaurants
    @@all
  end

  def self.find_by_name(name)
    # given a string of restaurant name, returns the
    # first restaurant that matches
    self.all.detect do |each_restaurant_instance|
      each_restaurant_instance.name == name
    end
  end

  def reviews
    # returns an array of all reviews for that restaurant

  end

  def customers
    # should return all of the customers who have
    # written reviews of that restaurant.

  end
end

#######################################################

class Review
  @@all = []

  def self.all
    # returns all of the reviews
    @@all
  end

  def customer
    # returns the customer for that given review

  end

  def restaurant
    # returns the restaurant for that given review

  end
end
