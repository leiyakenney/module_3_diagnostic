class Member
  attr_reader :name, :house

  def initialize(attributes = {})
    @name = attributes[:name]
    @house = attributes[:house]
  end
end
