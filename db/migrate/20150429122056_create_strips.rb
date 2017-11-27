class CreateStrips < ActiveRecord::Migration
  def change
    create_table :strips do |t|
      t.string :api_key
      t.string :public_key

      t.timestamps
    end
  end
end
