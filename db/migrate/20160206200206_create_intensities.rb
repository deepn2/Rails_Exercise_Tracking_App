class CreateIntensities < ActiveRecord::Migration
  def change
    create_table :intensities do |t|
      t.string :intensity
      t.text :description

      t.timestamps null: false
    end
  end
end
