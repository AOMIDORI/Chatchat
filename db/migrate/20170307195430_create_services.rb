class CreateServices < ActiveRecord::Migration[5.0]
  def change
    create_table :services do |t|
      t.references :supplier, foreign_key: true
      t.decimal :price, precision: 10, scale: 2
      t.float :discount
      t.text :description

      t.timestamps
    end
  end
end
