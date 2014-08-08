class AddTotalPriceToProduct < ActiveRecord::Migration
  def change
    add_column :products, :total_price, :double
  end
end
