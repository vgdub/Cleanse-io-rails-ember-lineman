require 'spec_helper'

describe Facet do
  it "has a valid factory" do
    expect(create(:facet)).to be_valid
  end

  let(:facet) { create(:facet) }

  describe "assocations" do
    it { should have_many(:records) }
    it { should have_many(:days) }
  end

  describe "validations" do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:facet_type) }
  end

  describe "convenience methods" do
    it "#qualitative_type?" do
      facet = build(:facet, facet_type: 1)
      expect(facet.is_qualitative_type?).to be_true
    end
  end
end
