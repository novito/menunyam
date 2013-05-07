require 'spec_helper'

describe Menu do
  it "has a valid factory" do
    FactoryGirl.create(:menu).should be_valid
  end

  it "is invalid without a name" do
    FactoryGirl.build(:menu, :name => nil).should_not be_valid
  end

  it "is invalid without a date" do
    FactoryGirl.build(:menu, :date => nil).should_not be_valid
  end

  it "is invalid without a restaurant" do
    FactoryGirl.build(:menu, :restaurant_id => nil).should_not be_valid
  end

  describe "Attributes and methods tests" do

    before(:each) do
      @menu = FactoryGirl.create(:menu)
    end

    subject { @menu }

    it { should respond_to(:name) }
    it { should respond_to(:restaurant) }

  end

end
