class CreateShoes < ActiveRecord::Migration
  def change
    create_table :shoes do |t|
      t.string :shoe
      t.string :brand
      t.date :bought

      t.timestamps null: false
    end
  end
end
