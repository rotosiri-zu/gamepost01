class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :name
      t.string :image
      t.text   :text
      t.string :platform
      t.string :genre
      t.timestamps null: true
    end
  end
end
