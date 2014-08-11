class AddShopToCategory < ActiveRecord::Migration
  def change
    add_reference :categories, :shop, index: true
  end
end
