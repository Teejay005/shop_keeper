# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  category_id :integer
#  name        :string(255)
#  price       :decimal(, )
#  tax_rate    :decimal(, )
#  created_at  :datetime
#  updated_at  :datetime
#  total_price :decimal(, )
#

class Product < ActiveRecord::Base
	belongs_to :category
	before_save :calculate_total

	private
	def calculate_total
		self.total_price = ((tax_rate+100)/100) * price 
	end
end
