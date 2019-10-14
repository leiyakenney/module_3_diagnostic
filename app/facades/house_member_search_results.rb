class HouseMemberSearchResults
  def initialize(house)
    @house = house
  end

  def house_name
    house
  end

  def member_count
    members.count
  end

  def house
    conn = Faraday.new(url: "https://www.potterapi.com/v1/") do |faraday|
      faraday.headers["X-API-KEY"] = ENV['POTTER_API_KEY']
      faraday.adapter Faraday.default_adapter
    end

    response = conn.get("/characters")

    member_search_data = JSON.parse(response.body, symbolize_names: true)[:results]
  end

  private
  attr_reader :house
end
