class Meal
    attr_accessor :waiter, :tip, :total, :customer
    @@all = []
    def initialize(waiter, customer, total, tip=0)
      @waiter = waiter
      @tip = tip
      @customer = customer
      @total = total
      @@all << self
    end
    def self.all
      @@all
  end
end
