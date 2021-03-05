class Grains
  # We can totally precompute all the values
  class_getter lookup : Array(Int128) { (0...64).map { |i| 2_i128**i } }

  # This is called a lazy getter.
  #
  # The getter/property is nil until called and then returns the result
  # of the first call to the block for all future calls.
  class_getter total : Int128 { lookup.sum }

  def self.square(grain : Number) : Int128
    raise ArgumentError.new("grain must be between 1 and 64 inclusive") unless grain.in?(1..64)
    lookup[grain - 1]
  end
end
