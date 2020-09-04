class CreateArtists < ActiveRecord::Migration[6.0]
  def change
    create_table :artists do |t|
      t.string :band_name
      t.integer :score
      t.belongs_to :billboard, null: false, foreign_key: true

      t.timestamps
    end
  end
end
