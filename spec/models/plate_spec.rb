require 'spec_helper'

describe Plate do
  it "has a valid factory" do
    FactoryGirl.create(:plate).should be_valid
  end

  it "is invalid without a name" do
    FactoryGirl.build(:menu, :name => nil).should_not be_valid
  end

  it "is invalid without a menu" do
    FactoryGirl.build(:plate, :menu_id => nil).should_not be_valid
  end

  describe "Attributes and methods tests" do

    before(:each) do
      @plate = FactoryGirl.create(:plate)
    end

    subject { @plate }

    it { should respond_to(:name) }
    it { should respond_to(:menu) }

  end

end
