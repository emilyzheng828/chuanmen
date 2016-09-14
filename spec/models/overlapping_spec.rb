require 'rails_helper'

RSpec.describe "overlapping" do 

  it "no date supplied" do
    expect(Overlapping.calculate([])).to eq([]) 
  end

  it "will return one user's dates if only one user exists" do
  user1 = [DateTime.new(2016,9,21),DateTime.new(2016,9,25)]
    expect(Overlapping.calculate([user1])).to eq([user1])
  end

  it "will return one user's dates if only one user exists" do
  user1 = [DateTime.new(2016,9,21),DateTime.new(2016,9,25)]
  user2 = [DateTime.new(2016,9,26),DateTime.new(2016,9,27)]

    expect(Overlapping.calculate([user1,user2])).to eq([])
  end

end