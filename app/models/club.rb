class Club < ApplicationRecord
  before_save :slugify

  belongs_to :county
  has_and_belongs_to_many :pitches

  has_one_attached :logo

  default_scope { order(:slug) }

  def slugify
    self.slug = name.parameterize
  end
end
