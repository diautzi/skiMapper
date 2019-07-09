class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.references :user
      t.references :trail
      t.string :content
      t.string :pic_url

      t.timestamps
    end
  end
end
