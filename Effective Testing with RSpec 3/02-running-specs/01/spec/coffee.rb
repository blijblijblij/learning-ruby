# Coffee
class Coffee
  def ingredients
    @ingredients ||= []
  end

  def add(ingredient)
    ingredients << ingredient
    price += 0.25
  end

  def price
    1.00
  end
end
