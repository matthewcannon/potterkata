require 'test/unit'

class BuyingBooks < Test::Unit::TestCase
	def test_when_buying_one_book_shopper_is_billed_price_of_one_book
		shopper = self
		price_of_one_book = 8

		Shop.new(shopper, price_of_one_book).buy()

		assert_equal @@bill, price_of_one_book
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
