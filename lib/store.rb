class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3}
  validates :annual_revenue, numericality: {greater_than_or_equal_to: 0}
  validate :mens_or_womens_apparel

  def mens_or_womens_apparel
    if !mens_apparel && !womens_apparel
      errors.add(:mens_apparel, "both men's and women's apparel are false");
    end
  end
end
