class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :name, null: false
      t.string :image, null: false
      t.text   :text, null: false
      t.string :platform, null: false
      t.string :genre, null: false
      t.timestamps null: true
    end
  end
end
