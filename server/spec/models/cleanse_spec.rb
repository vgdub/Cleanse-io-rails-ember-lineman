require 'spec_helper'

describe Cleanse do
  it "has a valid factory" do
    expect(create(:cleanse)).to be_valid
  end

  let(:cleanse) { create(:cleanse) }

  describe "assocations" do
    it { should have_many(:days) }
    it { should have_many(:records) }
    it { should have_many(:facets) }
  end

  describe "validations" do
    it { should validate_presence_of(:duration) }
    it { should validate_presence_of(:start_date) }
  end

  it "has correct number of days when started" do
    cleanse = create(:cleanse, duration: 10)
    cleanse.start
    expect(cleanse.days.count).to eq 10
  end

end
