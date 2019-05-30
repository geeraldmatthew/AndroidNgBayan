class CreatePhones < ActiveRecord::Migration[5.2]
  def change
    create_table :phones do |t|
      t.string :name
      t.string :brand
      t.integer :year_released
      t.string :camera
      t.string :mpixels
      t.string :internal_storage
      t.integer :sim
      t.string :screen_size
      t.string :operating_system
      t.integer :stock

      t.timestamps
    end
  end
end
