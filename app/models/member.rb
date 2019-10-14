class Member
  attr_reader :name, :house, :role, :patronus

  def initialize(attributes = {})
    @name = attributes[:name]
    @house = attributes[:house]
    @role = attributes[:role] ||= nil
    @patronus = attributes[:patronus] ||= nil
  end
end
