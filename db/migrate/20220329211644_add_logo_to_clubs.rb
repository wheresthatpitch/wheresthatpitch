class AddLogoToClubs < ActiveRecord::Migration[6.1]
  def change
    add_column :clubs, :logo, :string
  end
end
