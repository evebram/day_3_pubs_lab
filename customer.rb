class Customer

attr_reader :name, :wallet, :age, :drunkenness

def initialize(name, wallet, age, drunkenness)
  @name = name
  @wallet = wallet
  @age = age
  @drunkenness = drunkenness
end

#remove money from wallet
def remove_money(amount)
  @wallet -= amount
end

def get_more_drunk(unit)
  @drunkenness += unit
end

end
