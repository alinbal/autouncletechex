class CreateCars < ActiveRecord::Migration[6.0]
  def change
    create_table :cars do |t|
      t.string :brand
      t.string :car_model_name
      t.string :equipment_variant
      t.integer :year
      t.string :headline
      t.text :description
      t.string :fuel
      t.decimal :price
      t.string :price_currency
      t.integer :milage
      t.string :milage_unit
      t.string :seller_kind
      t.string :region

      t.timestamps
    end
  end
end
