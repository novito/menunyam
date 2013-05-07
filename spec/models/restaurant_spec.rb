require 'spec_helper'

describe Restaurant do
  it "has a valid factory" do
    FactoryGirl.create(:restaurant).should be_valid
  end

  it "is invalid without a name" do
    FactoryGirl.build(:restaurant, :name => nil).should_not be_valid
  end

  describe "Attributes and methods tests" do

    before(:each) do
      @restaurant = FactoryGirl.create(:restaurant)
    end

    subject { @restaurant }

    it { should respond_to(:name) }
    it { should respond_to(:city) }

  end

end
