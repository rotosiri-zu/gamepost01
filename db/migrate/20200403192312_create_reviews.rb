class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :nickname, null: false
      t.string :title, null: false
      t.integer :rate
      t.text :review, null: false
      t.integer :user_id
      t.references :game, foreign_key: true
      t.timestamps
    end
  end
end
