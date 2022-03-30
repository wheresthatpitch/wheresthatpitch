class RevertAddLogoToClubs < ActiveRecord::Migration[6.1]
  def change
    revert AddLogoToClubs
  end
end
