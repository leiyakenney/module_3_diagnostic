class HouseMemberSearchResults
  def initialize(house)
    @house = house
  end

  def house_name
    house.name
  end

  def house
    conn = Faraday.new(url:)
  end
end
