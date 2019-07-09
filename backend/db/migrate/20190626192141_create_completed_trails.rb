class CreateCompletedTrails < ActiveRecord::Migration[5.2]
  def change
    create_table :completed_trails do |t|
      t.references :user
      t.references :trail
      t.string :trail_name
      t.string :trail_image
      t.string :trail_location
      t.integer :trail_length
      t.string :trail_difficulty

      t.timestamps
    end
  end
end
