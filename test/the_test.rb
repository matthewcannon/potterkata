require 'test/unit'

class BuyingSingleBooks < Test::Unit::TestCase
	def test_shopper_is_billed_book_price_after_buying_one_book
		shopper = self
		book_price = 8
		Shop.new(shopper, book_price).buy()
		assert_equal @@bill, book_price
	end

	def new_bill(bill)
		@@bill = bill
	end
end

class Shop
	def initialize(shopper, book_price)
		@@shopper = shopper 
		@@book_price = book_price
	end

	def buy
		@@shopper.new_bill(@@book_price)
	end
end
