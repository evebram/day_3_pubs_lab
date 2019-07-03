class Customer

attr_reader :name, :wallet

def initialize(name, wallet)
  @name = name
  @wallet = wallet
end

#remove money from wallet
def remove_money(amount)
  @wallet -= amount
end

end
