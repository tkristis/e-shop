class Product < ActiveRecord::Base
  has_many :orders, dependent: :destroy
  has_many :comments, dependent: :destroy
  belongs_to :category

  validates :slug, uniqueness: true, presence: true,
                   exclusion: {in: %w[signup login]}
  validates :name, presence: true

  before_validation :generate_slug

  def highest_rating_comment
    comments.rating_desc.first
  end

  def lowest_rating_comment
    comments.rating_asc.first
  end

  def average_rating
    comments.average(:rating).to_f
  end

  def to_param
    slug
  end

  def generate_slug
    self.slug ||= name.parameterize
  end
end
