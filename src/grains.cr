
class Grains 
  def self.square(grains)
    if grains < 1 || grains > 64
        begin
            raise ArgumentError.new
        #   rescue ArgumentError    #Tests don't allow error to be rescue
        end
    else
        2**(grains-1)  
    end
  end

  def self.total
    sum = 0
    (1..64).each { |number| sum += 2**number }
    
  end
end
