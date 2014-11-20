class Rstaurant
  def initialize(menu)
    @menu = menu    
  end

  def cost(*orders)
    the_order = orders[0]
    the_order.keys.inject(0) do |cost, key|
      cost + @menu[key] * the_order[key]    
  end
end

rest = Restaraunt.new(
{
  rice: 3,
  noodles: 2
}
)

rest.cost(
{
  rice: 1,
  noodles: 2
}
)
