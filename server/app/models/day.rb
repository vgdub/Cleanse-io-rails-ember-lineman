class Day < ActiveRecord::Base
  belongs_to :cleanse
  has_many :records, dependent: :destroy
  has_many :facets, through: :records

end
