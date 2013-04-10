require 'test/unit'

class BuyingSingleBooks < Test::Unit::TestCase
	def test_shopper_is_billed_8_for_buying_one_book
		shopper = self
		Shop.new(shopper).buy()
		assert_equal @@bill, 8
	end

	def new_bill(bill)
		@@bill = bill
	end
end

class Shop
	def initialize(shopper)
		@@shopper = shopper 
	end

	def buy
		@@shopper.new_bill(8)
	end
end
