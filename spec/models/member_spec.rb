require 'rails_helper'

describe Member do
  it "exists" do
    attrs = {
      name: "Hermione Granger",
      house: "Gryffindor",
      role: "Student",
      patronus: "Otter"
    }

    member = Member.new(attrs)

    expect(member).to be_a Member
    expect(member.name).to eq("Hermione Granger")
    expect(member.house).to eq("Gryffindor")
    expect(member.role).to eq("Student")
    expect(member.patronus).to eq("Otter")
  end
end
