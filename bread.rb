class Bread
    attr_accessor :name
    attr_accessor :price

def initialize(name:, price:)
    self.name = name
    self.price = price
end

def acconunting(num)
    total = self.price*num
    return total
end

end