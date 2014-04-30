require 'spec_helper'

describe DayGenerator do

  let(:user) { create(:user) }
  let(:cleanse) { create(:cleanse) }

  it "creates a day" do
    cleanse = create(:cleanse, duration: 3)
    day_gen = DayGenerator.new(cleanse.id).run
    expect(cleanse.days.count).to eq 3
    expect(cleanse.days.first.id).to_not be_nil
  end

  it "creates the first day as the cleanse start date" do
    cleanse = create(:cleanse, start_date: "2013-12-09")
    day_gen = DayGenerator.new(cleanse.id).run
    expect(cleanse.days.first.date).to eq cleanse.start_date
  end

  it "creates the proper number of days" do
    cleanse = create(:cleanse, duration: 21)
    day_gen = DayGenerator.new(cleanse.id).run
    expect(cleanse.days.count).to eq 21
  end

  it "creates proper number of records for each day" do
    cleanse = create(:cleanse, duration: 3)
    qual_facet = create(:qualitative_facet)
    count_facet = create(:count_facet)
    dec_facet = create(:decimal_facet)

    day_gen = DayGenerator.new(cleanse.id).run

    expect(cleanse.days.first.records.count).to eq 3
    expect(cleanse.days.last.records.count).to eq 3
  end

end