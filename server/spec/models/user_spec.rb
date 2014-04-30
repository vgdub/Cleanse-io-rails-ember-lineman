require 'spec_helper'

describe User do
  it "has a valid factory" do
    expect(create(:user)).to be_valid
  end

  let(:user) { create(:user) }

  describe "assocations" do
    it { should have_many(:cleanses) }
  end

  describe "validations" do
    it { should validate_uniqueness_of(:email) }
    it { should ensure_length_of(:password).is_at_least(8) }
    it { should_not allow_value("blah").for(:email) }
    it { should allow_value("a@b.com").for(:email) }
  end
end
