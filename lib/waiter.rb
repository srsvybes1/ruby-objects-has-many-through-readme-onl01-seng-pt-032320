class Waiter
  attr_accessor :name, :age
  @@all = []
  def initialize(name, age)
    @name = name
    @age = age
    @@all << self
  end
  def self.all
    @@all
end
def new_meal(waiter, customer, total, tip=0)
  Meal.new(self, customer, total, tip)
end
def meals
  Meal.all.select do |meal|
    meal.waiter == self
  end
  def best_tipper
    best_tipped_meal = meals.max do |meal_a, meal_b|
      meal_a.tip <=> meal_b.tip
    end
    best_tipped_meal.customer
end
end
end
