class Club < ApplicationRecord
  before_save :slugify

  belongs_to :county

  default_scope { order(:slug) }

  def slugify
    self.slug = self.name.parameterize
  end
end
