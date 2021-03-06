class SearchController < ApplicationController
  def index
    @members = search_members(params[:house])
  end

  private

  def search_members(state)
    json_response = conn.get("/v1/characters?house=Gryffindor&key=#{ENV['POTTER_API_KEY']}")
    member_data = JSON.parse(json_response.body, symbolize_names: true)

    members = member_data.map do |member_hash|
      Member.new(member_hash)
    end
  end

  def conn
    Faraday.new(
      url: "https://www.potterapi.com/v1/",
      headers: {'X-API-KEY' => ENV["POTTER_API_KEY"]}
    )
  end
end
