class RemoveBuyerNameAndBuyerEmailAndStatusAndUserFromServices < ActiveRecord::Migration
  def change
    remove_column :services, :Buyer_Name, :string
    remove_column :services, :Buyer_Email, :string
    remove_column :services, :Status, :string
    remove_column :services, :User, :string
  end
end
