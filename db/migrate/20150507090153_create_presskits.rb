class CreatePresskits < ActiveRecord::Migration
  def change
    create_table :presskits do |t|
      t.text :data

      t.timestamps
    end
  end
end
