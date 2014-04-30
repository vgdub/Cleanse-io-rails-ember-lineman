class Record < ActiveRecord::Base
  belongs_to :day
  belongs_to :facet

  def value_to_i
    value.to_i
  end

  def value_to_i=(value)
    self.value = value
  end

end
