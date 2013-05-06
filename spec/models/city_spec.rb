require 'spec_helper'

describe City do
  it "has a valid factory" do
    FactoryGirl.create(:city).should be_valid
  end

  it "is invalid without a name" do
    FactoryGirl.build(:city, :name => nil).should_not be_valid
  end

  describe "Attributes and methods tests" do

    before(:each) do
      @city = FactoryGirl.create(:city)
    end

    subject { @city }

    it { should respond_to(:name) }
    it { should respond_to(:restaurants) }

  end

end
