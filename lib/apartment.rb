class Apartment

  attr_reader :number, :monthly_rent, :bathrooms, :bedrooms

  def initialize(apt_info = {number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    @number= apt_info[:number]
    @monthly_rent = apt_info[:monthly_rent]
    @bathrooms = apt_info[:bathrooms]
    @bedrooms = apt_info[:bedrooms]
    @renter = []
  end

  def renter
    @renter
  end

  def add_renter(renter1)
    renter << renter1
  end
end
