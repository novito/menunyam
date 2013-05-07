FactoryGirl.define do
  factory :menu do
    name 'Menu del dia'
    restaurant
    date Date.today
  end
end
