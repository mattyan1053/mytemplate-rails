require 'rails_helper'

RSpec.describe Cat, type: :model do
  it "is valid with valid attributes" do
    expect(Cat.new(name: "Tama", age: 3)).to be_valid
  end

  it "is not valid without a name" do
    expect(Cat.new(age: 3)).not_to be_valid
  end

  it "is not valid without an age" do
    expect(Cat.new(name: "Tama")).not_to be_valid
  end

  it "is not valid with a name longer than 255 characters" do
    expect(Cat.new(name: "a" * 256, age: 3)).not_to be_valid
  end

  it "is not valid with an age less than 0" do
    expect(Cat.new(name: "Tama", age: -1)).not_to be_valid
  end
end
