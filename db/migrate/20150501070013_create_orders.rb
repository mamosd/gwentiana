class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :transaction_id
      t.string :hno
      t.string :city
      t.string :state
      t.string :zip
      t.string :country
      t.string :status
      t.string :product
      t.string :quantity
      t.string :user_id
      t.decimal :price
      t.string :est_delivery
      t.string :international_shipping
      t.string :phone
      t.string :name

      t.timestamps
    end
  end
end
