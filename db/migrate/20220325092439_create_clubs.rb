class CreateClubs < ActiveRecord::Migration[6.1]
  def change
    create_table :clubs do |t|
      t.string :name
      t.string :slug
      t.float :latitude
      t.float :longitude
      t.string :eircode
      t.text :address
      t.timestamps
    end

    add_reference :clubs, :county
  end
end
