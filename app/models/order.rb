class Order < ActiveRecord::Base
	has_many :line_items, dependent: :destroy
	PAYMENT_TYPES = ["Check", "Credit Card", "Money Order"]
	validates_format_of :name, :with => /\A[^0-9`!@#\$%\^&*+_=]+\z/, presence: true
	validates :address, presence: true
	validates_format_of  :email, :with => /\A[\+A-Z0-9\._%-]+@([A-Z0-9-]+\.)+[A-Z]{2,4}\Z/i, presence: true
	validates :pay_type, inclusion: PAYMENT_TYPES

	def add_items_from_cart(cart)
		cart.line_items.each do |item|
			item.cart_id = nil
			item.order_id = self.id
		end
	end

end
