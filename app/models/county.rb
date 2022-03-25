class County < ApplicationRecord
  belongs_to :province
  has_many :clubs
  has_many :pitches

  default_scope { order(:slug) }
end
