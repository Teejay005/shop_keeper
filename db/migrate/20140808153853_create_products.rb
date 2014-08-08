class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.references :category
      t.string :name
      t.decimal :price
      t.decimal :tax_rate

      t.timestamps
    end
  end
end
