class CreateVideogames < ActiveRecord::Migration[5.2]
  def change
    create_table :videogames do |t|
      t.references :user, foreign_key: true
      t.references :game, foreign_key: true
      t.references :review, foreign_key: true
      t.timestamps
    end
  end
end
