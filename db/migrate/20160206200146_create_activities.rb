class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.references :exercise, index: true, foreign_key: true
      t.references :intensity, index: true, foreign_key: true
      t.integer :duration
      t.integer :distance
      t.datetime :date
      t.text :description

      t.timestamps null: false
    end
  end
end
