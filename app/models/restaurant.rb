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
