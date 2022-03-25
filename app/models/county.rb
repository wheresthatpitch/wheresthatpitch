class County < ApplicationRecord
  belongs_to :province
  has_many :clubs

  default_scope { order(:slug) }
end
