class CreateCounties < ActiveRecord::Migration[6.1]
  def change
    create_table :counties do |t|
      t.string :name
      t.string :slug
      t.timestamps
    end

    add_reference :counties, :province
  end
end
