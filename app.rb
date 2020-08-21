require_relative "customer"
require_relative "dish"
require_relative "restaurant"

test_customer = Customer.new(100, "Bob")

# puts test_customer.name
# puts test_customer.wallet_balance

def make_test_restaurant
  dish = Dish.new("Pizza", 5.00)
  dish1 = Dish.new("Hamburger", 10.00)

  main_dishes = [dish,dish1]
  side_dishes = [Dish.new("Fries ", 2.99), Dish.new("Salad ", 5.00)]

  Restaurant.new(main_dishes, side_dishes)
end

test_restaurant = make_test_restaurant
test_restaurant.display_main_menu
test_restaurant.display_side_menu

