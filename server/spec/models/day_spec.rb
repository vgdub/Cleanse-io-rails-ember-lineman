require 'spec_helper'

describe Day do
  it "has a valid factory" do
    expect(create(:day)).to be_valid
  end

  let(:day) { create(:day) }

  describe "assocations" do
    it { should belong_to(:cleanse) }
    it { should have_many(:records) }
    it { should have_many(:facets) }
  end
end
