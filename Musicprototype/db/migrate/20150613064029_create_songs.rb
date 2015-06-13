class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
		t.integer :band_id
		t.string :title
		t.string :link

      t.timestamps
    end
  end
end
