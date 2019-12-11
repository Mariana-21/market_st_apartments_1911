class Building

attr_reader :units
  def initialize
    @units = []
  end

  def add_unit(unit)
    @units << unit
  end

  def average_rent
    sum = monthly_rent.sum

  total = monthly_rent.count

  average = (monthly_rent.to_f / total).round(1)

  end
end
