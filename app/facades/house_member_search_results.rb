# class HouseMemberSearchResults
#   def initialize(house)
#     @house = house
#   end
#
#   # def house_name
#   #   binding.pry
#   #   members.house
#   # end
#
#   def member_count
#     members.count
#   end
#
#   def members
#     conn = Faraday.new(url: "https://www.potterapi.com/v1/") do |faraday|
#       # faraday.headers["X-API-KEY"] = ENV['POTTER_API_KEY']
#       faraday.adapter Faraday.default_adapter
#     end
#
#     response = conn.get("/v1/characters?key=#{ENV['POTTER_API_KEY']}")
#
#     member_search_data = JSON.parse(response.body, symbolize_names: true)
#
#     member_search_data.map do |member_data|
#       Member.new(member_data)
#     end
#   end
#
#   private
#   attr_reader :house
# end
