require './lib/renter'
require './lib/apartment'
require 'minitest/autorun'
require 'minitest/pride'

class ApartmentTest < Minitest::Test

  def test_it_exists
    renter1 = Renter.new("Jessie")
    assert_instance_of Renter, renter1
  end

  def test_it_has_a_name
    renter1 = Renter.new("Jessie")

    assert_equal "Jessie", renter1.name
  end

  def test_it_has_a_unit
    unit1 = Apartment.new(apt_info = {number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})

    assert_instance_of Apartment, unit1
  end

  def test_apartment_has_attributes
    unit1 = Apartment.new(apt_info = {number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})

    assert_equal apt_info[:number], unit1.number
    assert_equal apt_info[:monthly_rent], unit1.monthly_rent
    assert_equal apt_info[:bathrooms], unit1.bathrooms
    assert_equal apt_info[:bedrooms], unit1.bedrooms
  end

  def test_unit1_has_a_renter
    unit1 = Apartment.new(apt_info = {number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})

    assert_equal  [] ,unit1.renter
  end

  def test_renter_can_be_added
    unit1 = Apartment.new(apt_info = {number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    renter1 = Renter.new("Jessie")
    assert_equal  [] ,unit1.renter

    unit1.add_renter(renter1)

    assert_equal [renter1], unit1.renter
  end
end
