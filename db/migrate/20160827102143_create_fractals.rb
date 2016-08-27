class CreateFractals < ActiveRecord::Migration[5.0]
  def change
    create_table :fractals do |t|
      t.string :z, null: false
      t.string :c, null: false
      t.datetime :finished_at
      t.timestamps null: false
    end
  end
end
