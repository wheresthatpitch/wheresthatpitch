class County < ApplicationRecord
  belongs_to :province
  has_many :pitches
end
