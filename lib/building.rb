class Building

attr_reader :units
  def initialize
    @units = []
  end

  def add_unit(unit)
    @units << unit
  end

  def average_rent
    @monthly_rent.to_a.sum

    total = @monthly_rent.to_a.count

    @monthly_rent.to_f / total.round(1)

  end
end
