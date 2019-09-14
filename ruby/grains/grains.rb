class Grains
  def self.square(n)
    throw if (n < 1) || (n > 64)
    return 1 if n == 1
    total = 1
    (2..n).each { |sq| total = total * 2 }
    total
  end

  def self.total
    total = 1
    (2..64).each { |sq| total = total * 2 }
    total 
  end
end
