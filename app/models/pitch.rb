class Pitch < ApplicationRecord
  belongs_to :county

  scope :random, -> { find_by(rand(1..Pitch.count)) }
end
