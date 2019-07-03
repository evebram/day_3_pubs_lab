class Pub

attr_reader :name, :till

  def initialize(name, till, drinks)
    @name = name
    @till = till
    @drinks = drinks
  end

#add money to till
def add_money_to_till(amount)
  @till += amount
end

def add_drink(item)
  @drinks << item
end

def remove_drink(drink)
  #for drink in @drinks
    #if drink.name == name
  @drinks.delete(drink)
  #end
  #end
end

def count_drinks()
  @drinks.size
end

end
