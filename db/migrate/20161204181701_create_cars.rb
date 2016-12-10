class CreateCars < ActiveRecord::Migration[5.0]
  def change
    create_table :cars do |t|
      t.string :tag
      t.string :frame
      t.string :brand
      t.string :model
      t.string :finishing
      t.integer :numb_places
      t.string :color
      t.date :registration_date
      t.date :discharge_date
      t.date :leaving_date
      t.integer :kms

      t.timestamps
    end
  end
end
