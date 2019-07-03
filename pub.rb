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

end
