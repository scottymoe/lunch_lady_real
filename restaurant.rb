require_relative "dish"
class Restaurant
  attr_accessor :main_dishes, :side_dishes, :customers

  def initialize(main_dishes, side_dishes)
    @main_dishes = main_dishes
    @side_dishes = side_dishes
    @customers = []
  end

  def display_main_menu
    puts "***Main Menu***"
    @main_dishes.each_with_index do |dish, index|
      puts "#{index + 1}) #{dish}"
    end
  end

  def display_side_menu
    puts "***Side Menu***"
    @side_dishes.each_with_index do |dish, index|
      puts "#{index + 1}) #{dish}"
    end
  end

  def get_main_order
    user_main_choice_index = gets.chomp.to_i - 1
    main_dish = @main_dishes[user_main_choice_index]
    #add dish to customer order
    puts "you ordered #{main_dish.name}"
  end

  def get_side_order
    display_side_menu
    user_side_choice_index = gets.chomp.to_i - 1
    side_dish1 = @main_dishes[user_side_choice_index]
    #add dish to customer order
    puts "you ordered #{side_dish1.name}"
    puts "your price is #{side_dish1.price}"

  end

  def take_order
    #grab customer from array
    @current_customer = @customers.shift
    puts "Hello #{@current_customer.name} what would you like to order"
    get_main_order
    @display_main_menu
    #get input
  
    #display side menu
    get_side_order

    #display side menu for second side choice
    get_side_order
    puts "Price is #{main_dishes.price + side.dish1.price + side_dish2.price}"
    
    #repeat order back to customer

    #check if customer has enough money

    #charge customer
  end
end
