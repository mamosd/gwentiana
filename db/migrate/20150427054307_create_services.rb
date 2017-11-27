class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :Product
      t.string :Description
      t.string :Est_Delivery
      t.string :User
      t.string :Buyer_Name
      t.string :Buyer_Email
      t.string :Status

      t.timestamps
    end
  end
end
