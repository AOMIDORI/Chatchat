class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :avatar_url
      t.string :provider
      t.string :profile_url
      t.string :uid

      t.timestamps

      add_index :users, :uid
      add_index :users, :provider
      add_index :users, [:uid, :provider], unique: true
    end
  end
end