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
#  total_price :float
#

class Product < ActiveRecord::Base
end
