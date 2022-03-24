class County < ApplicationRecord
  belongs_to :province

  default_scope { order(:slug) }
end
