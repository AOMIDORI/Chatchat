class AddUrlToSupplierAndServices < ActiveRecord::Migration[5.0]
  def change
    add_column :suppliers, :image_url, :string, after: :email
    add_column :services, :image_url, :string, after: :name
  end
end
