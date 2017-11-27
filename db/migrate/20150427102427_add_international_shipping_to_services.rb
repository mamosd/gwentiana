class AddInternationalShippingToServices < ActiveRecord::Migration
  def change
    add_column :services, :international_shipping, :string
  end
end
