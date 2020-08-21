require_relative "customer"
require_relative "dish"
require_relative "restaurant"

test_customer = Customer.new(100, "Bob")

# puts test_customer.name
# puts test_customer.wallet_balance

def make_test_restaurant
  main_dishes = [Dish.new("Pizza", 5.00),Dish.new("Hamburger", 10.00)]
  side_dishes = [Dish.new("Fries ", 2.99), Dish.new("Salad ", 5.00)]

  test_customer = Customer.new(100, "Bob")
  test_customer1 = Customer.new(10, "Sally")


  restaurant =Restaurant.new(main_dishes, side_dishes) 

  restaurant.customers << test_customer
  restaurant.customers << test_customer1

  restaurant
end

test_restaurant = make_test_restaurant

test_restaurant.display_main_menu
test_restaurant.display_side_menu
test_restaurant.take_order



