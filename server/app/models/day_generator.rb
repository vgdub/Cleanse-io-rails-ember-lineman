class DayGenerator
  def initialize(cleanse_id)
    @cleanse = Cleanse.find(cleanse_id)
    @day_date = @cleanse.start_date.to_date
    @day_number = 1
    @facets = Facet.all
  end

  def run
    while @day_number <= @cleanse.duration
      @day = @cleanse.days.create(date: @day_date)
      create_day_records
      @day_number += 1
      @day_date = @day_date + 1.day
    end
  end

  private

  def create_day_records
    @facets.each do |facet|
      @day.records.create(facet_id: facet.id)
    end
  end

end