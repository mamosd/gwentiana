class CreateDescriptions < ActiveRecord::Migration
  def change
    create_table :descriptions do |t|
      t.string :title
      t.string :subtitle
      t.string :img4
      t.text :description
      t.string :iframe

      t.timestamps
    end
  end
end
