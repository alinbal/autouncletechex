class CreateAdverts < ActiveRecord::Migration[6.0]
  def change
    create_table :adverts do |t|
      t.string :url
      t.integer :source_id
      t.string :source_name
      t.references :car, null: false, foreign_key: true

      t.timestamps
    end
  end
end
