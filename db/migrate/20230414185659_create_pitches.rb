class CreatePitches < ActiveRecord::Migration[7.0]
  def change
    create_table :pitches do |t|
      t.string :name
      t.string :ainm
      t.float :latitude
      t.float :longitude
      t.string :address
      t.integer :total
      t.belongs_to :county

      t.timestamps
    end

    create_table :sports do |t|
      t.string :name
      t.string :ainm
    end

    create_table :pitches_sports, id: false do |t|
      t.belongs_to :pitch
      t.belongs_to :sport
    end
  end
end
