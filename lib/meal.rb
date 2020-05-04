class Meal
    attr_accessor :waiter, :tip, :total, :customer
    @@all = []
    def initialize(waiter, tip=0, total, customer)
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
