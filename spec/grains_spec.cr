require "spec"
require "../src/*"

describe "Grains" do
  it "1", focus: true do
    Grains.square(1).should eq(1)
  end

  it "2", focus: true do
    Grains.square(2).should eq(2)
  end

  it "3", focus: true  do
    Grains.square(3).should eq(4)
  end

  it "4", focus: true  do
    Grains.square(4).should eq(8)
  end

  it "16", focus: true do
    Grains.square(16).should eq(32768)
  end

  pending "32" do
    Grains.square(32).should eq(2147483648)
  end

  pending "64" do
    Grains.square(64).should eq(9223372036854775808)
  end

  it "square 0 raises an exception", focus: true  do
    expect_raises(ArgumentError) do
      Grains.square(0)
    end
  end

  it "negative square raises an exception", focus: true  do
    expect_raises(ArgumentError) do
      Grains.square(-1)
    end
  end

  it "square greater than 64 raises an exception", focus: true  do
    expect_raises(ArgumentError) do
      Grains.square(65)
    end
  end

  pending "returns the total number of grains on the board" do
    Grains.total.should eq(18446744073709551615)
  end
end
