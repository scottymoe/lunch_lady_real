class Customer
  attr_accessor :wallet_balance, :name, :order
  def initialize(wallet_balance, name)
    @wallet_balance = wallet_balance
    @name = name
    @order = {
      main_order: nil,
      side_dishes: []
    }
  end
end

