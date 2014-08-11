# == Schema Information
#
# Table name: categories
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#  shop_id     :integer
#
# Indexes
#
#  index_categories_on_shop_id  (shop_id)
#

class Category < ActiveRecord::Base
	belongs_to :shop
end
