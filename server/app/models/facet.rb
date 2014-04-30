class Facet < ActiveRecord::Base
  has_many :records
  has_many :days, through: :records

  validates :title, :facet_type, presence: true

  def is_qualitative_type?
    self.facet_type == 1
  end

  def is_count_type?
    self.facet_type == 2
  end

  def is_decimal_type?
    self.facet_type == 3
  end

end
