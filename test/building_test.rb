require './lib/renter'
require './lib/apartment'
require './lib/building'
require 'minitest/autorun'
require 'minitest/pride'

class BuildingTest < Minitest::Test
  def test_it_exists
    building = Building.new

    assert_instance_of Building, building
  end

  def test_it_has_units
    building = Building.new

    assert_equal [], building.units

  end

  def test_units_can_be_added
    building = Building.new
    unit1 = Apartment.new(apt_info = {number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    unit2 = Apartment.new(apt_info = {number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
    assert_equal [], building.units

    building.add_unit(unit1)
    building.add_unit(unit2)

    assert_equal [unit1, unit2], building.units
  end

  def test_it_can_get_average_rent
    building = Building.new
    unit1 = Apartment.new(apt_info = {number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    unit2 = Apartment.new(apt_info = {number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})

    assert building.average_rent
  end

  def test_it_can_add_new_units
    building = Building.new
    unit1 = Apartment.new(apt_info = {number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    unit2 = Apartment.new(apt_info = {number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
    unit3 = Apartment.new(apt_info = {number: "C3", monthly_rent: 1150, bathrooms: 2, bedrooms: 2})
    unit4 = Apartment.new(apt_info = {number: "D4", monthly_rent: 1500, bathrooms: 3, bedrooms: 2})
    assert_equal [], building.units

    building.add_unit(unit1)
    building.add_unit(unit2)
    building.add_unit(unit3)
    building.add_unit(unit4)
    assert_equal [unit1, unit2, unit3, unit4], building.units
  end

  def test_new_renter_can_be_added
    unit1 = Apartment.new(apt_info = {number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    unit2 = Apartment.new(apt_info = {number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
    renter1 = Renter.new("Spencer")
    renter2 = Renter.new("Jessie")
    assert_equal  [] ,unit2.renter

    unit2.add_renter(renter1)
    unit1.add_renter(renter2)

    assert_equal [renter1], unit2.renter
    assert_equal [renter2], unit1.renter

  end
end
