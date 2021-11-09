class CreateTracks < ActiveRecord::Migration[6.1]
  def change
    create_table :tracks do |t|
      t.string :title
      t.float :length
      t.string :artist
      t.date :published

      t.timestamps
    end
  end
end
