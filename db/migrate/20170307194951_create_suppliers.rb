class CreateSuppliers < ActiveRecord::Migration[5.0]
  def change
    create_table :suppliers do |t|
      t.string :name, unique: true
      t.string :username, unique: true
      t.string :email, unique: true
      t.string :address
      t.string :phone
      t.text :description

      t.timestamps
    end
  end
end
