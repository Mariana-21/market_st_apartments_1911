require './spec/test_helper'
require './lib/building'
require './lib/renter'
require './lib/apartment'

RSpec.describe 'Iteration 3' do
  before :each do
    @building = Building.new
    @a1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    @b2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
    @c3 = Apartment.new({number: "C3", monthly_rent: 1150, bathrooms: 2, bedrooms: 2})
    @spencer = Renter.new("Spencer")
    @jessie = Renter.new("Jessie")
    @pearl = Renter.new("Pearl")
    @building.add_unit(@a1)
    @building.add_unit(@b2)
    @building.add_unit(@c3)
  end

  it '1. Building #renter_with_highest_rent' do
    expect(@building).to respond_to(:renter_with_highest_rent).with(0).argument
    @b2.add_renter(@spencer)
    expect(@building.renter_with_highest_rent).to eq(@spencer)
    @a1.add_renter(@jessie)
    expect(@building.renter_with_highest_rent).to eq(@jessie)
    @c3.add_renter(@pearl)
    expect(@building.renter_with_highest_rent).to eq(@jessie)
  end
end