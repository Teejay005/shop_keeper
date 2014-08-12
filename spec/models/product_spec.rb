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

require 'spec_helper'

describe Product do
  pending "add some examples to (or delete) #{__FILE__}"
end
