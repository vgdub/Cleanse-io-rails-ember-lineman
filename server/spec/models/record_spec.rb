require 'spec_helper'

describe Record do
  it "has a valid factory" do
    expect(create(:record)).to be_valid
  end

  let(:record) { create(:record) }

  describe "assocations" do
    it { should belong_to(:day) }
    it { should belong_to(:facet) }
  end

  describe "convenience methods" do
    it "#value_to_i" do
      record = build(:record, value: 1)
      expect(record.value_to_i).to be 1
    end

    it "#value_to_i=" do
      record = build(:record, value: 1)
      record.update(value_to_i: 2)
      expect(record.value_to_i).to be 2
    end
  end
end
