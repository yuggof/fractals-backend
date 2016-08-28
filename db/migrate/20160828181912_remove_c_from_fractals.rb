class RemoveCFromFractals < ActiveRecord::Migration[5.0]
  def change
    remove_column :fractals, :c
  end
end
