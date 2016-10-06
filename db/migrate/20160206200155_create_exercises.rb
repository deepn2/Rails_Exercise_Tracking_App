class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :exercise
      t.text :description

      t.timestamps null: false
    end
  end
end
