class CreatePitches < ActiveRecord::Migration[6.1]
  def change
    create_table :pitches do |t|
      t.string :name
      t.string :slug
      t.float :latitude
      t.float :longitude
      t.timestamps
    end

    create_table :clubs_pitches, id: false do |t|
      t.belongs_to :club
      t.belongs_to :pitch
    end

    add_reference :pitches, :county
  end
end
