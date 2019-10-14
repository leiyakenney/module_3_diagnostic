require 'rails_helper'

describe Member do
  it "exists" do
    attrs = {
      name: "Hermione Granger"
    }

    member = Member.new(attrs)

    expect(member).to be_a Member
    expect(member.name).to eq("Hermione Granger")
  end
end
