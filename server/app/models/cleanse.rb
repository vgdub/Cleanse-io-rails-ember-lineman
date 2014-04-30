class Cleanse < ActiveRecord::Base
  belongs_to :user
  has_many :days, dependent: :destroy
  has_many :records, through: :days
  has_many :facets, through: :records

  validates :duration, :start_date, presence: true

  def start
    days_gen = DayGenerator.new(self.id)
    days_gen.run
  end

  def started?
    self.days.count == self.duration
  end

end
